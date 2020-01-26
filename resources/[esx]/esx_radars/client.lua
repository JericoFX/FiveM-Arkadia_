--===============================================--===============================================
--= stationary radars based on  https://github.com/DreanorGTA5Mods/StationaryRadar           =
--===============================================--===============================================



ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

local radares = {
    {x = 379.68807983398, y = -1048.3527832031, z = 29.250692367554},
    {x = -206.26, y = -882.09, z = 27.82},
    {x = -208.32, y = -525.41, z = 33.23},
	{x = 470.77, y = -314.11, z = 45.48},
	{x = 1103.42, y = 396.25, z = 81.78},
	{x = 172.54, y = -820.88, z = 30.18},
	{x = 382.06, y = -616.07, z = 28.39},
    {x = -253.10794067383, y = -630.20385742188, z = 33.002685546875},
	
}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        for k,v in pairs(radares) do
            local player = GetPlayerPed(-1)
            local coords = GetEntityCoords(player, true)
            if Vdist2(radares[k].x, radares[k].y, radares[k].z, coords["x"], coords["y"], coords["z"]) < 20 then
                if PlayerData.job ~= nil and not (PlayerData.job.name == 'police' or PlayerData.job.name == 'ambulance') then
                    checkSpeed()
                end
            end
        end
    end
end)

function checkSpeed()
    local pP = GetPlayerPed(-1)
    local speed = GetEntitySpeed(pP)
    local vehicle = GetVehiclePedIsIn(pP, false)
    local driver = GetPedInVehicleSeat(vehicle, -1)
    local plate = GetVehicleNumberPlateText(vehicle)
    local maxspeed = 49.6
    local mphspeed = math.ceil(speed*1.61)
	local fineamount = nil
	local finelevel = nil
	local truespeed = mphspeed
    if mphspeed > maxspeed and driver == pP then
        Citizen.Wait(250)
        TriggerServerEvent('fineAmount', mphspeed)
	if truespeed >= 55.8 and truespeed <= 62 then
	fineamount = Config.Fine
	finelevel = '10mph Over Limit'
	end
	if truespeed >= 62 and truespeed <= 68.2 then
	fineamount = Config.Fine2
	finelevel = '20mph Over Limit'
	end
	if truespeed >= 68.2 and truespeed <= 74.4 then
	fineamount = Config.Fine3
	finelevel = '30mph Over Limit'
	end
	if truespeed >= 74.4 and truespeed <= 80.6 then
	fineamount = Config.Fine4
	finelevel = '40mph Over Limit'
	end
        exports.pNotify:SetQueueMax("left", 1)
        exports.pNotify:SendNotification({
            text = "<h2><center>Camara Radar</center></h2>" .. "</br>Has sido multado!</br>Matricula: " .. plate .. "</br>Precio: $" .. fineamount .. "</br>Sancion: " .. finelevel .. "</br>Velocidad limite: " .. maxspeed .. "</br>Tu velocidad: " ..mphspeed,
            type = "error",
            timeout = 9500,
            layout = "centerLeft",
            queue = "left"
        })
    end
end

