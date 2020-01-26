ESX = nil
local Stress = nil
local Zone = 'normal'
local shoots = 1

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

    PlayerData = ESX.GetPlayerData()
    
end)

StartAnim = function(lib, anim)
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 50, 0, false, false, false)
    end)
end
  
StartScenario = function(anim)
    TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end

AddEventHandler('playerSpawned', function(spawn)
	TriggerServerEvent('snail_stress:init')
end)
TriggerServerEvent('snail_stress:init')

RegisterNetEvent('snail_stress:refresh')
AddEventHandler('snail_stress:refresh', function(s, type)
    Stress = s
    --[[if type == 'add' then
        Citizen.CreateThread(function()
            local Ped = GetPlayerPed(-1)
            local health = GetEntityHealth(Ped)
            if health > 0 then
                SetEntityHealth(Ped, health - 1)
            end
        end)
    end]]--
end)

RegisterNetEvent('esx_ambulancejob:revive')
AddEventHandler('esx_ambulancejob:revive', function()
    TriggerServerEvent('snail_stress:setStress', Config.StressAfterRevive)
end)

local isDepressed = 0
function SetDepressed()
    if isDepressed == 0 then
        ClearPedTasks(PlayerPedId())
        StartAnim('amb@world_human_bum_standing@depressed@idle_a', 'idle_c')
        isDepressed = 10
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if isDepressed >= 1 then
            isDepressed = isDepressed - 1
        end
    end
end)

Citizen.CreateThread(function()
    while Stress == nil do Citizen.Wait(0) end
    while true do
        Citizen.Wait(0)
        if Zone  == 'relax' then
            drawTxt("~p~Zona ~p~relax", 2, {255, 255, 255}, 0.4, 0.180, 0.968)
        end
        drawTxt("~p~Estres ~w~"..Stress, 2, {255, 255, 255}, 0.4, 0.230, 0.968)
        if Stress == 100 then
            --SetEntityHealth(GetPlayerPed(-1), 0)
            SetDepressed()
            DisableControlAction(0, 21, true)
            DisableControlAction(0, 22, true)
            DisableControlAction(0, 24, true)
            DisableControlAction(0, 25, true)
            DisablePlayerFiring(GetPlayerPed(-1), true)
        elseif Stress > 90 then
            Recoil(Config.ShakeMultiplierEffect)
        elseif Stress > 80 then
            Recoil()
        end

        local n = nil
        for k, v in pairs(Config.StressZones) do
            if GetDistanceBetweenCoords(v.x, v.y, v.z, GetEntityCoords(GetPlayerPed(-1),true)) < v.radio then
                Zone = 'stress'
                n = 1
            end
        end
        for k, v in pairs(Config.RelaxZones) do
            if GetDistanceBetweenCoords(v.x, v.y, v.z, GetEntityCoords(GetPlayerPed(-1),true)) < v.radio then
                Zone = 'relax'
                n = 1
            end
        end
        if n == nil then
            Zone = 'normal'
        end
        if Config.IsShootsActive == true then
            if IsPedShooting(GetPlayerPed(-1)) then
                if Config.ShootsNeeded <= shoots then
                    TriggerServerEvent('snail_stress:addStress', Config.DamageForShooting)
                    shoots = 1
                else
                    shoots = shoots + 1
                end
            end
        end
    end
end)

--BUCLE PARA BAJAR ESTRÉS DE NORMAL
Citizen.CreateThread(function()
    if Config.IsNormalActive == true then
        while true do
            Citizen.Wait(Config.SecondsForStress * 1000)
            TriggerServerEvent('snail_stress:addStress', Config.StressPerSeconds)
        end
    end
end)

--BUCLE PARA DETECTAR SI ESTÁ EN UNA ZONA DE ESTRÉS O RELAX
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k, v in pairs(Config.StressZones) do
            if GetDistanceBetweenCoords(v.x, v.y, v.z, GetEntityCoords(GetPlayerPed(-1),true)) < v.radio then
                Citizen.Wait(v.seconds * 1000)
                TriggerServerEvent('snail_stress:addStress', v.stressPerSeconds)
            end
        end
        for k, v in pairs(Config.RelaxZones) do
            if GetDistanceBetweenCoords(v.x, v.y, v.z, GetEntityCoords(GetPlayerPed(-1),true)) < v.radio then
                Citizen.Wait(v.seconds * 1000)
                TriggerServerEvent('snail_stress:removeStress', v.stressPerSeconds)
            end
        end
    end
end)

--BUCLE PARA DETECTAR SI ESTÁ A MÁS DE X KM / HORA
Citizen.CreateThread(function()
    if Config.IsSpeedActive == true then
        while true do
            Citizen.Wait(0)
            local player = GetPlayerPed(-1)
            if (IsPedInAnyVehicle(player, false)) then
                local vehicle = GetVehiclePedIsIn(player, false)
                local currSpeed = GetEntitySpeed(vehicle) * 3.6
                if currSpeed > Config.SpeedNeededToBeStressed then
                    TriggerServerEvent('snail_stress:addStress', Config.DamageForSpeed)
                    Citizen.Wait(Config.SecondsToBeDamagedBySpeed * 1000)
                end
            end
        end
    end
end)

function drawTxt(content, font, colour, scale, x, y)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(colour[1],colour[2],colour[3], 255)
    SetTextEntry("STRING")
    SetTextDropshadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    AddTextComponentString(content)
    DrawText(x, y)
end

function Recoil(multiplier)
    if multiplier == nil then multiplier = 1 end
    local ped = GetPlayerPed( -1 )
    local weapon = GetSelectedPedWeapon(ped)
    --print(weapon) -- To get the weapon hash by pressing F8 in game
    
    -- Disable reticle
    
    -- Disable melee while aiming (may be not working)
    
    if IsPedArmed(ped, 6) then
        DisableControlAction(1, 140, true)
        DisableControlAction(1, 141, true)
        DisableControlAction(1, 142, true)
    end
    
    -- Disable ammo HUD
    
    DisplayAmmoThisFrame(false)
    
    -- Shakycam
    
    -- Pistol
    if weapon == GetHashKey("WEAPON_STUNGUN") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.01)
        end
    end
    
    if weapon == GetHashKey("WEAPON_FLAREGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.01)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SNSPISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.02)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SNSPISTOL_MK2") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.025)
        end
    end
    
    if weapon == GetHashKey("WEAPON_PISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.025)
        end
    end
    
    if weapon == GetHashKey("WEAPON_PISTOL_MK2") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.03)
        end
    end
    
    if weapon == GetHashKey("WEAPON_APPISTOL") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.05)
        end
    end
    
    if weapon == GetHashKey("WEAPON_COMBATPISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.03)
        end
    end
    
    if weapon == GetHashKey("WEAPON_PISTOL50") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.2)
        end
    end
    
    if weapon == GetHashKey("WEAPON_HEAVYPISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.03)
        end
    end
    
    if weapon == GetHashKey("WEAPON_VINTAGEPISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.025)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MARKSMANPISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.03)
        end
    end
    
    if weapon == GetHashKey("WEAPON_REVOLVER") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.045)
        end
    end
    
    if weapon == GetHashKey("WEAPON_REVOLVER_MK2") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.055)
        end
    end
    
    if weapon == GetHashKey("WEAPON_DOUBLEACTION") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.025)
        end
    end
    -- SMG
    
    if weapon == GetHashKey("WEAPON_MICROSMG") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.035)
        end
    end
    
    if weapon == GetHashKey("WEAPON_COMBATPDW") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.045)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SMG") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.045)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SMG_MK2") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.055)
        end
    end
    
    if weapon == GetHashKey("WEAPON_ASSAULTSMG") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.050)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MACHINEPISTOL") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.035)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MINISMG") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.035)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MG") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.07)
        end
    end
    
    if weapon == GetHashKey("WEAPON_COMBATMG") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.08)
        end
    end
    
    if weapon == GetHashKey("WEAPON_COMBATMG_MK2") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.085)
        end
    end
    
    -- Rifles
    
    if weapon == GetHashKey("WEAPON_ASSAULTRIFLE") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.07)
        end
    end
    
    if weapon == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.075)
        end
    end
    
    if weapon == GetHashKey("WEAPON_CARBINERIFLE") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.06)
        end
    end
    
    if weapon == GetHashKey("WEAPON_CARBINERIFLE_MK2") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.065)
        end
    end
    
    if weapon == GetHashKey("WEAPON_ADVANCEDRIFLE") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.06)
        end
    end
    
    if weapon == GetHashKey("WEAPON_GUSENBERG") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.05)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SPECIALCARBINE") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.06)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.075)
        end
    end
    
    if weapon == GetHashKey("WEAPON_BULLPUPRIFLE") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.05)
        end
    end
    
    if weapon == GetHashKey("WEAPON_BULLPUPRIFLE_MK2") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.065)
        end
    end
    
    if weapon == GetHashKey("WEAPON_COMPACTRIFLE") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.05)
        end
    end
    
    -- Shotgun
    
    if weapon == GetHashKey("WEAPON_PUMPSHOTGUN") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.07)
        end
    end
    
    if weapon == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.085)
        end
    end
    
    if weapon == GetHashKey("WEAPON_SAWNOFFSHOTGUN") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.06)
        end
    end
    
    if weapon == GetHashKey("WEAPON_ASSAULTSHOTGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.12)
        end
    end
    
    if weapon == GetHashKey("WEAPON_BULLPUPSHOTGUN") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.08)
        end
    end
    
    if weapon == GetHashKey("WEAPON_DBSHOTGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.05)
        end
    end
    
    if weapon == GetHashKey("WEAPON_AUTOSHOTGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.08)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MUSKET") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.04)
        end
    end
    
    if weapon == GetHashKey("WEAPON_HEAVYSHOTGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.13)
        end
    end
    
    -- Sniper
    
    if weapon == GetHashKey("WEAPON_SNIPERRIFLE") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.2)
        end
    end
    
    if weapon == GetHashKey("WEAPON_HEAVYSNIPER") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.3)
        end
    end
    
    if weapon == GetHashKey("WEAPON_HEAVYSNIPER_MK2") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.35)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MARKSMANRIFLE") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.1)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MARKSMANRIFLE_MK2") then			
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.1)
        end
    end
    
    -- Launcher
    
    if weapon == GetHashKey("WEAPON_GRENADELAUNCHER") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.08)
        end
    end
    
    if weapon == GetHashKey("WEAPON_RPG") then
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.9)
        end
    end
    
    if weapon == GetHashKey("WEAPON_HOMINGLAUNCHER") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.9)
        end
    end
    
    if weapon == GetHashKey("WEAPON_MINIGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.20)
        end
    end
    
    if weapon == GetHashKey("WEAPON_RAILGUN") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 1.0)
            
        end
    end
    
    if weapon == GetHashKey("WEAPON_COMPACTLAUNCHER") then		
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.08)
        end
    end
    
    if weapon == GetHashKey("WEAPON_FIREWORK") then	
        if IsPedShooting(ped) then
            ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', multiplier * 0.5)
        end
    end
    
    -- Infinite FireExtinguisher
    
    if weapon == GetHashKey("WEAPON_FIREEXTINGUISHER") then		
        if IsPedShooting(ped) then
            SetPedInfiniteAmmo(ped, true, GetHashKey("WEAPON_FIREEXTINGUISHER"))
        end
    end
end