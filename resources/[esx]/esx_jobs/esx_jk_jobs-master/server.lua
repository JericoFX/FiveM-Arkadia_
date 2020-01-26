ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_empregos:setJobt')
AddEventHandler('esx_empregos:setJobt', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("taxi", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobRybak')
AddEventHandler('esx_empregos:setJobRybak', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("unicorn", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobGórnik')
AddEventHandler('esx_empregos:setJobGórnik', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("miner", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobRafiner')
AddEventHandler('esx_empregos:setJobRafiner', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("reporter", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_empregos:setJobRzeźnik')
AddEventHandler('esx_empregos:setJobRzeźnik', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("slaughterer", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_empregos:setJobKrawiec')
AddEventHandler('esx_empregos:setJobKrawiec', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("tailor", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_empregos:setJobDrwal')
AddEventHandler('esx_empregos:setJobDrwal', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("lumberjack", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_empregos:setJobReporter')
AddEventHandler('esx_empregos:setJobReporter', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("fueler", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())	
end)

RegisterServerEvent('esx_empregos:setJobTrucker')
AddEventHandler('esx_empregos:setJobTrucker', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("trucker", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobDiver')
AddEventHandler('esx_empregos:setJobDiver', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("salvage", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobGarbage')
AddEventHandler('esx_empregos:setJobGarbage', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("garbage", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)


RegisterServerEvent('esx_empregos:setJobBrinks')
AddEventHandler('esx_empregos:setJobBrinks', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("brinks", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)


RegisterServerEvent('esx_empregos:setJobBus')
AddEventHandler('esx_empregos:setJobBus', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("bus", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)


RegisterServerEvent('esx_empregos:setJobElectrician')
AddEventHandler('esx_empregos:setJobElectrician', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("electro", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)

RegisterServerEvent('esx_empregos:setJobPilot')
AddEventHandler('esx_empregos:setJobPilot', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob("pilot", 0) -- 0 is job grade
        TriggerClientEvent('esx:showNotification', source, 'You were hired ~g~' .. xPlayer.getName())
end)
