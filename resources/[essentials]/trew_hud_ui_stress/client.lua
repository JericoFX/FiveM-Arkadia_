local STRESS_ACTIVE = true
local ALCOOL = false
local ESX    = nil
 
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end 
    ESX.PlayerData = ESX.GetPlayerData()
end)
 
 
AddEventHandler('playerSpawned', function()
		
		if STRESS_ACTIVE == false then
			exports.trew_hud_ui:createStatus({
			    status = 'stress',
			    color = '#FF0090',
			    icon = '<i class="fas fa-brain"></i>'  --icons https://fontawesome.com/icons?d=gallery
			});
			STRESS_ACTIVE = true
		end

	end)
	
AddEventHandler('playerSpawned', function()
		
		if ALCOOL == false then
			exports.trew_hud_ui:createStatus({
			    status = 'drunk',
			    color = '#00fff2',
			    icon = '<i class="fas fa-cocktail"></i>'  --icons https://fontawesome.com/icons?d=gallery
			});
			ALCOOL = true
		end

	end)
   
   
Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)
			
			local STRESS_STATUS
	
			TriggerEvent('esx_status:getStatus', 'stress', function(status)
			    STRESS_STATUS = status.getPercent()
			end)
	
			exports.trew_hud_ui:setStatus({
			    name = 'stress',
			    value = STRESS_STATUS
			});
		end
	end)

Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)
			
			local ALCOOL
	
			TriggerEvent('esx_status:getStatus', 'drunk', function(status)
			    ALCOOL = status.getPercent()
			end)
	
			exports.trew_hud_ui:setStatus({
			    name = 'drunk',
			    value = ALCOOL
			});
		end
	end)	
