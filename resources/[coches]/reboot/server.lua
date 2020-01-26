local text1 = "Recordad visitar nuestro foro para estar informado de la normativa: RefugioGamerroleplay.es"
local text2 = "Para reportar una situacion no correcta, usa /assist"
local text3 = "Recuerda usar el comando /911 y /ems para rol de entorno"
local text4 = "Quieres estar informado de todo? discordapp.com/invite/nDaUh7d"

RegisterServerEvent("restart:checkreboot")

AddEventHandler('restart:checkreboot', function()
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	if date_local == '05:46:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text1)
	elseif date_local == '05:51:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text2)
	elseif date_local == '05:56:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text3)
	elseif date_local == '05:59:10' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '05:59:20' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '05:59:30' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '05:59:40' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '05:59:50' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '06:00:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
		
	elseif date_local == '11:46:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text1)
	elseif date_local == '11:51:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text2)
	elseif date_local == '11:56:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text3)
	elseif date_local == '11:59:10' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '11:59:20' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '11:59:30' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '11:59:40' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '11:59:50' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '12:00:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
		
	elseif date_local == '17:46:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text1)
	elseif date_local == '17:51:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text2)
	elseif date_local == '17:56:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text3)
	elseif date_local == '17:59:10' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '17:59:20' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '17:59:30' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '17:59:40' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '17:59:50' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '18:00:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
		
	elseif date_local == '23:46:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text1)
	elseif date_local == '23:51:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text2)
	elseif date_local == '23:56:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text3)
	elseif date_local == '23:59:10' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '23:59:20' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '23:59:30' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '23:59:40' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '23:59:50' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	elseif date_local == '00:00:00' then
		TriggerClientEvent('chatMessage', -1, "Ayuntamiento", {255, 0, 0}, text4)
	end
end)

function restart_server()
	SetTimeout(1000, function()
		TriggerEvent('restart:checkreboot')
		restart_server()
	end)
end
restart_server()
