local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


local PlayerData              = {}
local BlipList                = {}
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local FirstSpawn, PlayerLoaded = true, false

IsDead = false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
	refreshBlips()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	refreshBlips()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	deleteBlips()
	refreshBlips()
end)



-- Open Hospital Menu
function OpenHospitalMenu()
	ESX.UI.Menu.CloseAll()
	
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'hospital_confirm', {
		title    = _U('valid_purchase'),
		align    = 'top-left',
		elements = {
			{label = _U('yes'),  value = 'yes'},
			{label = _U('no'), value = 'no'}
		}
	}, function(data, menu)
		menu.close()
		
		if data.current.value == 'yes' then
			ESX.TriggerServerCallback('esx_hospital:checkMoney', function(hasEnoughMoney)
					if hasEnoughMoney then
						local playerPed = PlayerPedId()
						local coords = GetEntityCoords(playerPed)
						
					
						TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)
					
						Citizen.CreateThread(function()
					
							ESX.SetPlayerData('lastPosition', formattedCoords)

							TriggerServerEvent('esx:updateLastPosition', formattedCoords)
					
							RespawnPed(playerPed, formattedCoords, 0.0)
					
						end)
						
						SetEntityHealth(GetPlayerPed(-1), 200)
						TriggerServerEvent('esx_hospital:pay')
						StopScreenEffect('DeathFailOut')
					else
						ESX.ShowNotification(_U('not_enough_money'))
					end
				end)
		elseif data.current.value == 'no' then
			menu.close()
		end
	end, function (data, menu)
		menu.close()
	end)
end

function RespawnPed(ped, heading)
    SetEntityCoordsNoOffset(myPlayerPed, 355.29, -1425.42, 33.43, false, false, false, true)
    NetworkResurrectLocalPlayer(355.29, -1425.42, 33.43, 345.11, true, false)
	SetPlayerInvincible(ped, false)
	TriggerEvent('playerSpawned')
	ClearPedBloodDamage(ped)

	ESX.UI.Menu.CloseAll()
end


AddEventHandler('esx_hospital:hasEnteredMarker', function(zone)
	CurrentAction     = 'hospital_menu'
	CurrentActionMsg  = _U('press_access')
	CurrentActionData = {}
end)

AddEventHandler('esx_hospital:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
end)

-- Draw Markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local coords = GetEntityCoords(PlayerPedId())
		local canSleep = true

		for k,v in pairs(Config.Zones) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
				canSleep = false
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
			end
		end
		
		if canSleep then
			Citizen.Wait(500)
		end
	end
end)

-- Activate Menu when in Markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(200)

		local coords      = GetEntityCoords(PlayerPedId())
		local isInMarker  = false
		local currentZone = nil

		for k,v in pairs(Config.Zones) do
			if GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x then
				isInMarker  = true
				currentZone = k
			end
		end

		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
			HasAlreadyEnteredMarker = true
			LastZone                = currentZone
			TriggerEvent('esx_hospital:hasEnteredMarker', currentZone)
		end

		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('esx_hospital:hasExitedMarker', LastZone)
		end
		
		if not isInMarker then
			Citizen.Wait(500)
		end
	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if CurrentAction ~= nil then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, Keys['E']) then
				if CurrentAction == 'hospital_menu' then
					OpenHospitalMenu()
				end

				CurrentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)

-- Blips
function deleteBlips()
	if BlipList[1] ~= nil then
		for i=1, #BlipList, 1 do
			RemoveBlip(BlipList[i])
			BlipList[i] = nil
		end
	end
end

function refreshBlips()
	if Config.EnableBlips then
		if Config.EnableUnemployedOnly then
			if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'unemployed' or ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'gang' then
				for k,v in pairs(Config.Locations) do
					local blip = AddBlipForCoord(v.x, v.y)

					SetBlipSprite (blip, Config.BlipHospital.Sprite)
					SetBlipDisplay(blip, Config.BlipHospital.Display)
					SetBlipScale  (blip, Config.BlipHospital.Scale)
					SetBlipColour (blip, Config.BlipHospital.Color)
					SetBlipAsShortRange(blip, true)

					BeginTextCommandSetBlipName("STRING")
					AddTextComponentString(_U('blip_hospital'))
					EndTextCommandSetBlipName(blip)
					table.insert(BlipList, blip)
				end
			end
		else
			for k,v in pairs(Config.Locations) do
				local blip = AddBlipForCoord(v.x, v.y)

				SetBlipSprite (blip, Config.BlipHospital.Sprite)
				SetBlipDisplay(blip, Config.BlipHospital.Display)
				SetBlipScale  (blip, Config.BlipHospital.Scale)
				SetBlipColour (blip, Config.BlipHospital.Color)
				SetBlipAsShortRange(blip, true)

				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString(_U('blip_hospital'))
				EndTextCommandSetBlipName(blip)
				table.insert(BlipList, blip)
			end
		end
	end
end

-- Create Ped
Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_doctor_01"))
	
    while not HasModelLoaded(GetHashKey("s_m_m_doctor_01")) do
        Wait(1)
    end
	
	if Config.EnablePeds then
		for _, item in pairs(Config.Locations) do
			local npc = CreatePed(4, 0xd47303ac, item.x, item.y, item.z, item.heading, false, true)
			
			SetEntityHeading(npc, item.heading)
			FreezeEntityPosition(npc, true)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
		end
	end
end)