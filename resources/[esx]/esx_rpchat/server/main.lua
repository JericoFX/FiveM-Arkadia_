-- Codigo necesario para la identificacion del PJ --

ESX                     = nil
local DisptachRequestId = 0
local PhoneNumbers      = {}

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end

-- INICIO CODIGO ORIGINAL DEL ESX_RPCHAT --

 AddEventHandler('chatMessage', function(source, name, message)
      if string.sub(message, 1, string.len("/")) ~= "/" then
		CancelEvent()
      end
	  CancelEvent()
  end)

RegisterCommand('be', function(source, args, rawCommand)
local name = getIdentity(source)
local msg = rawCommand:sub(4)
fal = name.firstname .. " " .. name.lastname
TriggerClientEvent("sendProximityMessageBe",-1, source, fal, msg)
end, false)

RegisterCommand('5412', function(source, args, rawCommand)
local name = getIdentity(source)
local msg = rawCommand:sub(4)
fal = name.firstname .. " " .. name.lastname
TriggerClientEvent("sendProximityMessageBe",-1, source, fal, "Se ha enviado una llamada de entorno a la policia. ")
end, false)

RegisterCommand('me', function(source, args, rawCommand)
local name = getIdentity(source)
local msg = rawCommand:sub(4)
fal = name.firstname .. " " .. name.lastname
TriggerClientEvent("sendProximityMessageMe",-1, source, fal, msg)
end, false)

RegisterCommand('do', function(source, args, rawCommand)
local name = getIdentity(source)
local msg = rawCommand:sub(4)
fal = name.firstname .. " " .. name.lastname
TriggerClientEvent("sendProximityMessageDo",-1, source, fal, msg)
end, false)

 RegisterCommand('tweet', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); color: white; border-radius: 3px;"><i class="fab fa-twitter "style="font-size:15px;color:white"> <font color="#FFFF00">@{0} Tweeted:</font> &ensp; <font color="white">{1}</font></div>',
        args = { fal, msg }
    })
end, false)

 RegisterCommand('anuncio', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(9)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(214, 168, 0, 1); border-radius: 3px;"><i class="fas fa-ad"style="font-size:20px;color:black"></i> <b><font color="red">Anuncio:</font></b> <b><i><font color="white">{1}</font></i></b></div>',
        args = { fal, msg }
    })
end, false)

RegisterServerEvent('ooc')
AddEventHandler('ooc', function(pid, msg)
	local name = getIdentity(source)
    fal = "[" .. pid .. "] " .. name.firstname .. " " .. name.lastname
	TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(0, 0, 0, 0.6); border-radius: 3px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
        args = { fal, msg }
    })
end)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end

-- FIN DEL CODIGO ORIGINAL DEL ESX_RPCHAT --

-- Comandos para el entorno y samur(ems) Con localizacion --


displayLocation = true  -- Cambiar a Falso si no queremos que se muestre la localizacion en el chat --
displayTime = 140 -- El tiempo máximo que se mostrará en el GPS (En Segundos) [Por defecto 2 Mins] --
webhookurl911 = 'Insertar aqui la URL del Webhook' -- Si agregamos el webhook del discord aqui, podremos recibir los mensajes en el canal de la policia del discord --
webhookurlSamur = 'Insertar aqui la URL del Webhook' -- Si agregamos el webhook del discord aqui, podremos recibir los mensajes en el canal de la ems del discord --

-- Code --

RegisterServerEvent('911')
AddEventHandler('911', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Report: ^r' .. msg)
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Report: **' .. msg)  
   	else
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Location: **' .. location .. '** | Report: **' .. msg)
		TriggerClientEvent('911:setBlip', -1, playername, x, y, z, location, msg)
		Wait(displayTime * 1000)
		TriggerClientEvent('911:killBlip', -1)
	end
end)

--Radio LSPD--

RegisterServerEvent('lspd')
AddEventHandler('lspd', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Report: ^r' .. msg)
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Report: **' .. msg)  
   	else
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Location: **' .. location .. '** | Report: **' .. msg)
		TriggerClientEvent('lspd:setBlip', -1, playername, x, y, z, location, msg)
		Wait(displayTime * 1000)
		TriggerClientEvent('lspd:killBlip', -1)
	end
end)

--RADIO EMS--

RegisterServerEvent('ems')
AddEventHandler('ems', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Report: ^r' .. msg)
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Report: **' .. msg)  
   	else
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Location: **' .. location .. '** | Report: **' .. msg)
		TriggerClientEvent('ems:setBlip', -1, playername, x, y, z, location, msg)
		Wait(displayTime * 1000)
		TriggerClientEvent('ems:killBlip', -1)
	end
end)

--RADIO MECANICOS

RegisterServerEvent('meca')
AddEventHandler('meca', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Report: ^r' .. msg)
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Report: **' .. msg)  
   	else
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Location: **' .. location .. '** | Report: **' .. msg)
		TriggerClientEvent('meca:setBlip', -1, playername, x, y, z, location, msg)
		Wait(displayTime * 1000)
		TriggerClientEvent('meca:killBlip', -1)
	end
end)

--RADIO EMS+LSPD--

RegisterServerEvent('poem')
AddEventHandler('poem', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Report: ^r' .. msg)
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Report: **' .. msg)  
   	else
		--sendDiscord911('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Location: **' .. location .. '** | Report: **' .. msg)
		TriggerClientEvent('poem:setBlip', -1, playername, x, y, z, location, msg)
		Wait(displayTime * 1000)
		TriggerClientEvent('poem:killBlip', -1)
	end
end)

RegisterServerEvent('samur')
AddEventHandler('samur', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4EMS | Caller ID: ^r' .. playername .. '^*^4 | Report: ^r' .. msg)
		--sendDiscordSamur('911 Communications', '**911 | Caller ID: **' .. playername .. '** | Report: **' .. msg)  
   	else
		--sendDiscordSamur('Samur Comunications', '**Samur | Caller ID: **' .. playername .. '** | Location: **' .. location .. '** | Report: **' .. msg)
		TriggerClientEvent('samur:setBlip', -1, playername, x, y, z, location, msg)
		Wait(displayTime * 2000)
		TriggerClientEvent('samur:killBlip', -1)
	end
end)

--[[

Funcion para el discord, actualmente no esta en uso.
Para activarlo, introducir el webhook en la variable "webhookurl"
y descomentar las lineas "sendDiscord..." de los eventros 'samur' y '911'

--]]
function sendDiscord911(name, message)
  	PerformHttpRequest(webhookurl911, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end

function sendDiscordSamur(name, message)
	PerformHttpRequest(webhookurlSamur, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end