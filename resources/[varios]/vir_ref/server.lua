ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('popre:isPolice')
AddEventHandler('popre:isPolice',function()
	local source = source
	TriggerEvent('es:getPlayerFromId',source, function(user)
		if user then
		local player = user.getIdentifier()
		local result = MySQL.Sync.fetchScalar("SELECT job FROM users WHERE identifier = @player", {[' @player'] = player})
		local xPlayer = ESX.GetPlayerFromId(source)
		local job = xPlayer.job.name
		TriggerClientEvent('popre:comprobadopol',source,job)
		end
	end)
end)

RegisterNetEvent('popre:sendemergency')
AddEventHandler('popre:sendemergency',function(x,y,z,tipo)
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('popre:cordsent',xPlayers[i],x,y,z,tipo)
		end
	end
end)

RegisterNetEvent('popre:isautomatic')
AddEventHandler('popre:isautomatic',function(forma)
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('popre:comp',xPlayers[i],forma)
		end
	end
end)
