AddEventHandler('playerConnecting', function()
    TriggerClientEvent('esx:showAdvancedNotification', -1,'RefugioGamer RP', '~y~Noticias de la Ciudad', '~s~' .. GetPlayerName(source) .. '~g~ Ha llegado a RefugioGamer RP', 'CHAR_PEGASUS_DELIVERY', 1)
end)

AddEventHandler('playerDropped', function()
    TriggerClientEvent('esx:showAdvancedNotification', -1,'RefugioGamer RP', '~y~Noticias de la Ciudad', '~s~' .. GetPlayerName(source) .. '~r~ Ha desconectado la mente', 'CHAR_PEGASUS_DELIVERY', 1)
end)

RegisterServerEvent('playerDied')
AddEventHandler('playerDied',function(killer,reason)
	if killer == "**Invalid**" then --Não consigo descobrir o que está gerando inválido, é tarde. Se você descobrir, me avise. Eu apenas manuseio isso como uma string por enquanto.
		reason = 2
	end
	if reason == 0 then
	    TriggerClientEvent('esx:showAdvancedNotification', -1,'RefugioGamer RP', '~y~Noticias de la Ciudad', '~r~' .. GetPlayerName(source) .. '~s~ Cometio un suicidio', 'CHAR_PEGASUS_DELIVERY', 1)
	elseif reason == 1 then
	    TriggerClientEvent('esx:showAdvancedNotification', -1,'RefugioGamer RP', '~y~Noticias de la Ciudad', '~s~'.. killer .. '~r~ Assesinó ~s~' .. GetPlayerName(source), 'CHAR_PEGASUS_DELIVERY', 1)
	else
	    TriggerClientEvent('esx:showAdvancedNotification', -1,'RefugioGamer RP', '~y~Noticias de la Ciudad', '~r~' .. GetPlayerName(source) .. '~s~ Murió respawn 5 minutos', 'CHAR_PEGASUS_DELIVERY', 1)
	end
end)