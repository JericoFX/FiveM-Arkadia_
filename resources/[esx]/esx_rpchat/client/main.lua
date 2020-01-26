
-- Codigo necesario para la identificacion del trabajo para el filtrado de los mensajes --

ESX                              = nil
local PlayerData        = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

-- INICIO CODIGO ORIGINAL DEL ESX_RPCHAT --

RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "^4" .. name .. "", {0, 153, 204}, "^7 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "^4" .. name .. "", {0, 153, 204}, "^7 " .. message)
  end
end)

RegisterNetEvent('sendProximityMessageMe')
AddEventHandler('sendProximityMessageMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(204, 0, 102, 0.6); border-radius: 4px;"><i class="fas fa-user-circle"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(204, 0, 102, 0.6); border-radius: 4px;"><i class="fas fa-user-circle"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    end
end)

RegisterNetEvent('sendProximityMessageBe')
AddEventHandler('sendProximityMessageBe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { name, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { name, message }
        })
    end
end)

RegisterNetEvent('sendProximityMessageDo')
AddEventHandler('sendProximityMessageDo', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(0, 153, 0, 0.6); border-radius: 4px;"><i class="fas fa-user-circle"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(0, 153, 0, 0.6); border-radius: 4px;"><i class="fas fa-user-circle"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    end
end)

RegisterCommand('ooc', function(source, args)
	local pid = GetPlayerServerId(PlayerId())
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        CancelEvent()
    else
        TriggerServerEvent('ooc', pid, msg)
    end
end)

-- FIN DEL CODIGO ORIGINAL DEL ESX_RPCHAT --


						-- 911 y EMS --
-------------------------------------------------------------------------

blip = nil

-- Ayudas para los comandos --
		

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/911', 'Envia una notificaicon de emergencia al 911 para ayuda policial', {
    { name="Report", help="Introducre la incidencia/reporte aqui!" }
})

    TriggerEvent('chat:addSuggestion', '/ems', 'Envia una notificaicon de ayuda a los Servicios de Emergencia - EMS', {
    { name="Report", help="Introducre la incidencia/reporte aqui!" }
})

	TriggerEvent('chat:addSuggestion', '/tweet', 'Publica un Tweet', {
    { name="Report", help="Introduce el tweet aqui!" }
})

	TriggerEvent('chat:addSuggestion', '/ooc', 'Chat OOC', {
    { name="Report", help="Chat OOC" }
})

	TriggerEvent('chat:addSuggestion', '/anuncio', 'Publica tu Anuncio y/o aviso', {
    { name="Report", help="Introduce el anuncio/aviso aqui!" }
})
end)

-- GPS --

displayTime = 500 -- Refreshes Blips every 5 Minutes by Default --  

-- Code --

blip = nil
blips = {}

RegisterNetEvent('911:setBlip')
AddEventHandler('911:setBlip', function( playername, x, y, z, location, msg)
	if PlayerData.job.name == "police" then
		TriggerEvent('chatMessage','', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Location: ^r' .. location .. '^*^4 | Report: ^r' .. msg)
		blip = AddBlipForCoord(x, y, z)
		SetBlipSprite(blip, 66)
		SetBlipScale(blip, 1.0)
		SetBlipColour(blip, 3)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('911 Call - ' .. playername)
		EndTextCommandSetBlipName(blip)
		table.insert(blips, blip)
	end
	Wait(displayTime * 1000)
	for i, blip in pairs(blips) do 
		RemoveBlip(blip)
	end
end)

--CHAT LSPD--

RegisterNetEvent('lspd:setBlip')
AddEventHandler('lspd:setBlip', function( playername, x, y, z, location, msg)
	if PlayerData.job.name == "police" then
		TriggerEvent('chatMessage','', {255,255,255}, '^*^4 [RADIO LSPD] ^*^6' .. playername .. ':^*^0' .. msg)
	end
end)

--CHAT EMS--

RegisterNetEvent('ems:setBlip')
AddEventHandler('ems:setBlip', function( playername, x, y, z, location, msg)
	if PlayerData.job.name == "ambulance" then
		TriggerEvent('chatMessage','', {255,255,255}, '^*^9 [RADIO EMS] ^*^9' .. playername .. ':^*^0' .. msg)
	end
end)

RegisterNetEvent('poem:setBlip')
AddEventHandler('poem:setBlip', function( playername, x, y, z, location, msg)
	if PlayerData.job.name == "police" or
		PlayerData.job.name == "ambulance" then
		TriggerEvent('chatMessage','', {255,255,255}, '^*^8 [RADIO EMERGENCIAS] ^*^8' .. playername .. ':^*^0' .. msg)
	end
end)

--CHAT MECANICO--

RegisterNetEvent('meca:setBlip')
AddEventHandler('meca:setBlip', function( playername, x, y, z, location, msg)
	if PlayerData.job.name == "mechanic" then
		TriggerEvent('chatMessage','', {255,255,255}, '^*^3 [Redio Mecanico] ' .. playername .. ':^*^0' .. msg)
	end
end)

RegisterNetEvent('samur:setBlip')
AddEventHandler('samur:setBlip', function( playername, x, y, z, location, msg)
	if PlayerData.job.name == "ambulance" then
		TriggerEvent('chatMessage','', {255,255,255}, '^*^4EMS | Caller ID: ^r' .. playername .. '^*^4 | Location: ^r' .. location .. '^*^4 | Report: ^r' .. msg)
		blip = AddBlipForCoord(x, y, z)
		SetBlipSprite(blip, 66)
		SetBlipScale(blip, 1.0)
		SetBlipColour(blip, 3)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('Samur Call - ' .. playername)
		EndTextCommandSetBlipName(blip)
		table.insert(blips, blip)
	end
	Wait(displayTime * 2000)
	for i, blip in pairs(blips) do
		RemoveBlip(blip)
	end
end)

RegisterNetEvent('911:killBlip')
AddEventHandler('911:killBlip', function()
    RemoveBlip(blip)
end)

RegisterNetEvent('samur:killBlip')
AddEventHandler('samur:killBlip', function()
    RemoveBlip(blip)
end)


-- Commandos -- 

-- POLICIA --

RegisterCommand('911', function(source, args)
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5911', {255,255,255}, '^7Introduzca su ^1entorno')
    else
		ExecuteCommand('5412')
		TriggerEvent('chatMessage', "^7Se ha enviado entorno a las autoridades. ")
        TriggerServerEvent('911', location, msg, x, y, z, name)
    end
end)

--Chat RADIO LSPD--

RegisterCommand('lspd', function(source, args)
  if PlayerData.job.name == "police" then
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local pid = GetPlayerFromServerId(id)
	if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    end
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5911', {255,255,255}, '^7Introduzca su ^1entorno')
    else
        TriggerServerEvent('lspd', location, msg, x, y, z, pid, name, -1)
    end
   end
end)

-- EMS --

RegisterCommand('ems', function(source, args)
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5EMS', {255,255,255}, '^7Introduzca su ^1entorno')
    else
		TriggerEvent('chatMessage', "^7Se ha enviado entorno a los servicios sanitarios. ")
        TriggerServerEvent('samur', location, msg, x, y, z, name)
    end
end)

--RADIO EMS--

RegisterCommand('rems', function(source, args)
  if PlayerData.job.name == "ambulance" then
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local pid = GetPlayerFromServerId(id)
	if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    end
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5911', {255,255,255}, '^7Introduzca su ^1entorno')
    else
        TriggerServerEvent('ems', location, msg, x, y, z, pid, name, -1)
    end
   end
end)

--RADIO MECANICOS--

RegisterCommand('meca', function(source, args)
  if PlayerData.job.name == "mechanic" then
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local pid = GetPlayerFromServerId(id)
	if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    end
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5911', {255,255,255}, '^7Introduzca su ^1entorno')
    else
        TriggerServerEvent('meca', location, msg, x, y, z, pid, name, -1)
    end
   end
end)

--Radio Polisia y EMS--

RegisterCommand('re', function(source, args)
	if PlayerData.job.name == "police" or
		PlayerData.job.name == "ambulance" then
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local pid = GetPlayerFromServerId(id)
	if pid == myId then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
        TriggerEvent('chat:addMessage', {
            template = '<div style="padding: 0.5vw;  margin: 0.5vw; background-color: rgba(160, 160, 160, 0.6); border-radius: 4px;"><i class="fas fa-comment-slash"style="font-size:20px;color:white"></i>&ensp;<font color="FFFF00">{0}:</font>&ensp;<font color="white">{1}</font></div>',
            args = { id, message }
        })
    end
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5911', {255,255,255}, '^7Introduzca su ^1entorno')
    else
        TriggerServerEvent('poem', location, msg, x, y, z, pid, name, -1)
    end
   end
end)