local Keys = {["E"] = 38, ["X"] = 73}

local blips = {}
local zones = {}

local menuIsShowed = false
local waitingForTrain = false

local hasTicket = false
local ticketStationCode = nil

local isInsideZone = false

ESX	= nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)

--Check for markers
Citizen.CreateThread(function()
	refreshBlips()
	while true do
		Citizen.Wait(0)

		local coords = GetEntityCoords(PlayerPedId())
		local zone = nil
		local station = nil

		for stationKey, stationValues in pairs(Config.Stations) do
			for zoneKey, zoneValues in pairs(stationValues.Zones) do
				if GetDistanceBetweenCoords(coords, zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z, true) < zoneValues.Size.x * 1.5 then
					zone = zoneValues
					station = stationValues
				end
			end
		end

		if Config.ShowTicketMachinePressNotification then
			if zone ~= nil then
				if isInsideZone == false and zone.Type == "ticket" then
					ESX.ShowNotification(_U('press-e'), true)
					isInsideZone = true
				end
			else
				isInsideZone = false
			end
		end 
		
		if IsControlJustReleased(0, Keys['E']) and zone ~= nil then 
			TriggerEvent('esx_EfmiMetro:action', zone, station)
		end

	end
end)

AddEventHandler('esx_EfmiMetro:action', function(zone, station)
	if waitingForTrain then
		return
	end

	if zone.Type == "ticket" then
		OpenTicketMenu(zone, station)
	elseif zone.Type == "bench" then
		SitOnBench(zone, station)
	elseif zone.Type == "fast-travel" then
		FastTravel(zone)
	end
end)

function OpenTicketMenu(zone, station)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ticket', 
	{
		title = _U('ticket-machine'),
		align = 'bottom-right',
		elements = {
			{label = _U('buy-ticket'), value = 'buy_ticket'}
		}

	}, function(data, menu)
		if data.current.value == 'buy_ticket' then 
			local stations = {}

			local lib, anim = "mp_common", "givetake1_a"
			ESX.Streaming.RequestAnimDict(lib, function()
				TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
				Citizen.Wait(500)
			end)

			for stationKey, stationValues in pairs(Config.Stations) do
				local price = stationValues.Price
				if Config.PriceOverride ~= nil then
					price = Config.PriceOverride
				end
				if station.Code ~= stationValues.Code then
					table.insert(stations, {
						label = ('%s - <span style="color:green;">%s€</span>'):format(stationValues.Label, price),
						price = price,
						stationCode = stationValues.Code
					})
				end
			end

			ESX.UI.Menu.CloseAll()
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ticket-buy',
			{
				title = _U('ticket-machine') .. ' - ' .. _U('buy-ticket'),
				align = 'bottom-right',
				elements = stations
			}, function(data2, menu2)
				ESX.TriggerServerCallback('esx_EfmiMetro:checkBalance', function(hasMoney)
					if hasMoney then
						ESX.UI.Menu.CloseAll()
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'ticket-buy-confirm', 
						{
							title = _U('are-you-sure-you-want-to-buy-a-ticket'),
							align = 'bottom-right',
							elements = {
								{label = _U('yes'), value = 'confirm'},
								{label = _U('no'), value = 'cancel'}
							}
						}, function(data3, meny3)
							if data3.current.value == 'confirm' then
								ESX.TriggerServerCallback('esx_EfmiMetro:buyTicket', function(bought)
									if bought then 
										ESX.ShowNotification('-' .. data2.current.price .. '€')
										ESX.ShowNotification(_U('ticket-bought'))
										hasTicket = true
										ticketStationCode = data2.current.stationCode
									else
										ESX.ShowNotification(_U('ticket-purchase-failed'))
									end
								end, data2.current.stationCode, data2.current.price)
							else
								ESX.ShowNotification(_U('ticket-purchase-cancelled'))
							end
							local lib, anim = "mp_common", "givetake1_a"

							ESX.UI.Menu.CloseAll()

							ESX.Streaming.RequestAnimDict(lib, function()
								TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
								Citizen.Wait(500)
							end)
						end, function(data3, menu3)
								menu3.close()
					end)
					else
						ESX.UI.Menu.CloseAll()
						ESX.ShowNotification(_U('no-money-for-ticket'))
					end
				end, data2.current.price)
			end, function(data2, menu2)
					menu2.close()
		end)
		end
	end, function(data, menu)
			menu.close()
	end)
end


function SitOnBench(zone, station)

	local trainTimer = nil
	local trainTimerColor = nil
	local trainTimerText = nil
	local playerHealthLastFrame = nil

	RotatePlayerToSitOnABench(zone)
	waitingForTrain = true

	local lib, anim = "anim@heists@prison_heistunfinished_biztarget_idle", "target_idle"
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 1, 0, false, false, false)
	end)

	while waitingForTrain do
		Citizen.Wait(1)

		if IsControlJustReleased(0, Keys['X']) then
			waitingForTrain = false
			break
		end

		if playerHealthLastFrame ~= nil and GetEntityHealth(PlayerPedId()) < playerHealthLastFrame then
			waitingForTrain = false
			break
		end

		playerHealthLastFrame = GetEntityHealth(PlayerPedId())

		if trainTimer == nil then
			trainTimer = Config.TrainFrequency * 100 * 60
		else
			trainTimer = trainTimer - 1
		end
		
		if trainTimer <= 0 then
			if hasTicket then
				trainTimerText = _U('press-e') .. ' '..  _U('to-enter-the-train') .. ' - ' .. ticketStationCode
				trainTimerColor = Config.TrainArrivedTextColour

				if IsControlJustReleased(0, Keys['E']) then
					waitingForTrain = false
					travelToStation(ticketStationCode)
				end
			else
				trainTimerColor = Config.NoTicketTextColour
				if Config.TrainHoppingEnabled == true then
					trainTimerText = _U('press-e') .. ' '.. _U('to-travel-without-a-ticket')
					if IsControlJustReleased(0, Keys['E']) then
						OpenTrainHoppingMenu(station)
					end
				else
					trainTimerText = _U('need-a-train-ticket-to-travel')
				end
			end
		else
			if Config.ShowWaitTimerToPlayer == true then
				trainTimerText = _U('next-train-in') .. ': '..math.ceil(trainTimer / 100)
			else
				trainTimerText = _('waiting-for-train')
			end
			trainTimerColor = Config.TrainTimerTextColour
		end

		
		drawWaitingUI(trainTimerText, trainTimerColor.r, trainTimerColor.g, trainTimerColor.b)
	end
end

function OpenTrainHoppingMenu(station)
	local stations = {}

	for stationKey, stationValues in pairs(Config.Stations) do
		if station.Code ~= stationValues.Code then
			table.insert(stations, {
				label = ('%s'):format(stationValues.Label),
				stationCode = stationValues.Code
			})
		end
	end

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'choose_station', 
	{
		title = _U('choose-station'),
		align = 'bottom-right',
		elements = stations
	}, function(data, menu)
		ESX.UI.Menu.CloseAll()
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'confirm_station_of_choise',
		{
			title = _U('are-you-sure-you-want-to-travel-without-a-ticket'),
			align = 'bottom-right',
			elements = {
				{label = _U('yes'), value = 'confirm'},
				{label = _U('no'), value = 'cancel'}
			}
		}, function(data2, menu2)
			if data2.current.value == 'confirm' then
				ESX.UI.Menu.CloseAll()
				waitingForTrain = false
				if Config.TrainHoppingEnabled == true then
					CheckIfPlayerWasCatchedTrainHopping()
				end
				travelToStation(data.current.stationCode)
			end
			ESX.UI.Menu.CloseAll()
		end, function(data2, menu2)
			menu2.close()
		end)
	end, function(data, menu)
		menu.close()
	end)
end

function CheckIfPlayerWasCatchedTrainHopping()
	randomNumber = math.random(100)
	if randomNumber < Config.TrainHoppingFineChance then
		TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(PlayerId()), '', (_U('ticket-fine-label')), Config.TrainHoppingFine)
		ESX.ShowNotification(_U('you-got-caught-by-a-ticket-inspector') .. ', ' .. _U('you-received-a-fine'))
	else
		ESX.ShowNotification(_U('you-didnt-get-caught-by-a-ticket-inspector'))
	end
end

function FastTravel(zone)
	DoScreenFadeOut(1000)
	while not IsScreenFadedOut() do
		Citizen.Wait(0)
	end
	SetEntityCoords(PlayerPedId(), zone.TargetPos.x, zone.TargetPos.y, zone.TargetPos.z, true, true, true, false)
	SetEntityHeading(PlayerPedId(), zone.TargetPos.h)
	DoScreenFadeIn(1000)
end

function travelToStation(targetStationCode)

	local targetStation = nil

	for stationKey, stationValues in pairs(Config.Stations) do
		if stationValues.Code == targetStationCode then
			targetStation = stationValues
		end
	end

	if targetStation ~= nil then
		DoScreenFadeOut(4000)
		waitingForTrain = false
		Citizen.Wait(4000)
		for zoneKey, zoneValues in pairs(targetStation.Zones) do
			if zoneValues.Type == 'arrivals' then
				local lib, anim = "move_m@confident", "move_m@confident"
				ESX.Streaming.RequestAnimDict(lib, function()
					TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
				end)
				SetEntityCoords(PlayerPedId(), zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z, true, true, true, false)
				SetEntityHeading(PlayerPedId(), zoneValues.Pos.h)
				hasTicket = false
				ticketStationCode = nil
			end
		end
		Citizen.Wait(Config.TravelTime * 1000 - 4000)
		DoScreenFadeIn(4000)
	else
		return
	end
end

--Draw Zones
Citizen.CreateThread(function()
	while true do 
		Citizen.Wait(0)
		local coords = GetEntityCoords(PlayerPedId())

		for stationKey, stationValues in pairs(Config.Stations) do
			for zoneKey, zoneValues in pairs(stationValues.Zones) do
				local distanceToZone = GetDistanceBetweenCoords(coords, zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z, true)

				if zoneValues.Marker ~= 0 and distanceToZone <= Config.DrawDistance.Zone and Config.DrawTicketMachineZones then
						DrawMarker(zoneValues.Marker, zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z, 
						0.0, 0.0, 0.0, 0, 0.0, 0.0, zoneValues.Size.x, zoneValues.Size.y, zoneValues.Size.z, 
						zoneValues.Color.r, zoneValues.Color.g, zoneValues.Color.b, 100, false, true, 2, false, false, false, false)
				end

				if zoneValues.Text ~= nil and distanceToZone <= Config.DrawDistance.Text and not waitingForTrain then 
					Draw3DText(zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z, zoneValues.Text)
				end

			end
		end
	end
end)

function refreshBlips()
	for stationKey, stationValues in pairs(Config.Stations) do
		local blip = AddBlipForCoord(stationValues.BlipInfo.Pos.x, stationValues.BlipInfo.Pos.y, stationValues.BlipInfo.Pos.z)
		SetBlipSprite(blip, stationValues.BlipInfo.Sprite)
		SetBlipAsShortRange(blip, true)
		SetBlipScale(blip, Config.StationBlipScale)
		SetBlipColour(blip, stationValues.BlipInfo.Color)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(_U('metrostation'))
		EndTextCommandSetBlipName(blip)
		table.insert(blips, blip)
	end
end

function drawWaitingUI(timeLeftText, r, g, b)
	SetTextFont(0)
	SetTextColour(r, g, b, 255)
	SetTextProportional(0)
	SetTextScale(0.45,0.45)
	SetTextEntry("STRING")
	AddTextComponentString(timeLeftText)
	DrawText(0.7, 0.95)
end

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

--TODO: Clean up this bit of code.
function RotatePlayerToSitOnABench(benchZone)

	local distancesToDegrees = {
		{degree = 0, distance = benchZone.Pos.h},
		{degree = 90, distance = math.abs(90 - benchZone.Pos.h)},
		{degree = 180, distance = math.abs(180 - benchZone.Pos.h)},
		{degree = 270, distance = math.abs(270 - benchZone.Pos.h)},
		{degree = 360, distance = math.abs(360 - benchZone.Pos.h)}
	}
	local lowestDegree = nil
	for degreeKey, degreeValue in pairs(distancesToDegrees) do
		if lowestDegree == nil or lowestDegree.distance > degreeValue.distance then
			lowestDegree = degreeValue
		end
	end

	local coords = GetEntityCoords(PlayerPedId())
	if lowestDegree.degree == 0 or lowestDegree.degree == 360 then
		--(+y)
		if coords.y > benchZone.Pos.y then
			SetEntityHeading(PlayerPedId(), benchZone.Pos.h)
		else
			local h = benchZone.Pos.h + 180
			if h > 360 then
				h = h - 360
			end
			SetEntityHeading(PlayerPedId(), h)
		end
	elseif lowestDegree.degree == 90 then
		--(-x)
		if coords.x < benchZone.Pos.x then
			SetEntityHeading(PlayerPedId(), benchZone.Pos.h)
		else
			local h = benchZone.Pos.h + 180
			if h > 360 then
				h = h - 360
			end
			SetEntityHeading(PlayerPedId(), h)
		end

	elseif lowestDegree.degree == 180 then
		--(-y)
		if coords.y < benchZone.Pos.y then
			SetEntityHeading(PlayerPedId(), benchZone.Pos.h)
		else
			local h = benchZone.Pos.h + 180
			if h > 360 then
				h = h - 360
			end
			SetEntityHeading(PlayerPedId(), h)
		end

	elseif lowestDegree.degree == 270 then
		--(+x)
		if coords.x > benchZone.Pos.x then
			SetEntityHeading(PlayerPedId(), benchZone.Pos.h)
		else
			local h = benchZone.Pos.h + 180
			if h > 360 then
				h = h - 360
			end
			SetEntityHeading(PlayerPedId(), h)
		end
	end
end