ESX = nil
local pos_before_assist,assisting,assist_target = nil, false, nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	SetNuiFocus(false, false)
end)

function GetIndexedPlayerList()
	local players = {}
	for k,v in ipairs(GetActivePlayers()) do
		players[tostring(GetPlayerServerId(v))]=GetPlayerName(v)..(v==PlayerId() and " (self)" or "")
	end
	return json.encode(players)
end

RegisterNUICallback("ban", function(data,cb)
	if not data.target or not data.length or not data.reason then return end
	ESX.TriggerServerCallback("el_bwh:ban",function(success)
		if success then ESX.ShowNotification("~g~Jugador Baneado correctamente") else ESX.ShowNotification("~r~Algo salio mal") end
	end, data.target, data.reason, data.length)
end)

RegisterNUICallback("warn", function(data,cb)
	ESX.TriggerServerCallback("el_bwh:warn",function(success)
		if success then ESX.ShowNotification("~g~Jugador Sancionado correctamente") else ESX.ShowNotification("~r~Algo salio mal") end
	end, data.target, data.message, data.anon)
end)

RegisterNUICallback("unban", function(data,cb)
	ESX.TriggerServerCallback("el_bwh:unban",function(success)
		if success then ESX.ShowNotification("~g~Jugador desbaneado correctamente") else ESX.ShowNotification("~r~Algo salio mal") end
	end, data.id)
end)

RegisterNUICallback("hidecursor", function(data,cb)
	SetNuiFocus(false, false)
end)

RegisterNetEvent("el_bwh:receiveWarn")
AddEventHandler("el_bwh:receiveWarn",function(sender,message)
	TriggerEvent("chat:addMessage",{color={255,255,0},multiline=true,args={"BWH","Has recibido una amolestacion"..(sender~="" and " from "..sender or "").."!\n-> "..message}})
	Citizen.CreateThread(function()
		local scaleform = RequestScaleformMovie("mp_big_message_freemode")
		while not HasScaleformMovieLoaded(scaleform) do Citizen.Wait(0) end
		BeginScaleformMovieMethod(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
		PushScaleformMovieMethodParameterString("~y~AMOLESTACION")
		PushScaleformMovieMethodParameterString(message)
		PushScaleformMovieMethodParameterInt(5)
		EndScaleformMovieMethod()
		PlaySoundFrontend(-1, "LOSER", "HUD_AWARDS")
		local drawing = true
		Citizen.SetTimeout(Config.warning_screentime,function() drawing = false end)
		while drawing do
			Citizen.Wait(0)
			DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
		end
	end)
end)

RegisterNetEvent("el_bwh:requestedAssist")
AddEventHandler("el_bwh:requestedAssist",function(t)
	SendNUIMessage({show=true,window="assistreq",data=Config.popassistformat:format(GetPlayerName(GetPlayerFromServerId(t)),t)})
end)

RegisterNetEvent("el_bwh:acceptedAssist")
AddEventHandler("el_bwh:acceptedAssist",function(t)
	if assisting then return end
	local target = GetPlayerFromServerId(t)
	if target then
		local ped = GetPlayerPed(-1)
		pos_before_assist = GetEntityCoords(ped)
		assisting = true
		assist_target = t
		ESX.Game.Teleport(ped,GetEntityCoords(GetPlayerPed(target))+vector3(0,0.5,0))
	end
end)

RegisterNetEvent("el_bwh:assistDone")
AddEventHandler("el_bwh:assistDone",function()
	if assisting then
		assisting = false
		if pos_before_assist~=nil then ESX.Game.Teleport(GetPlayerPed(-1),pos_before_assist+vector3(0,0.5,0)); pos_before_assist = nil end
		assist_target = nil
	end
end)

RegisterNetEvent("el_bwh:hideAssistPopup")
AddEventHandler("el_bwh:hideAssistPopup",function(t)
	SendNUIMessage({hide=true})
end)

RegisterNetEvent("el_bwh:showWindow")
AddEventHandler("el_bwh:showWindow",function(win)
	if win=="ban" or win=="warn" then
		SendNUIMessage({show=true,window=win,players=GetIndexedPlayerList()})
	elseif win=="banlist" or win=="warnlist" then
		ESX.TriggerServerCallback(win=="banlist" and "el_bwh:getBanList" or "el_bwh:getWarnList",function(list)
			SendNUIMessage({show=true,window=win,list=list})
		end)
	end
	SetNuiFocus(true, true)
end)

RegisterCommand("decassist",function(a,b,c)
	SendNUIMessage({hide=true})
end, false)

TriggerEvent('chat:addSuggestion', '/decassist', 'Esconder popup de asistencia',{})
TriggerEvent('chat:addSuggestion', '/assist', 'Solicitar asistencia de admin',{})
TriggerEvent('chat:addSuggestion', '/cassist', 'Cancelar tu peticion de asistencia',{})
TriggerEvent('chat:addSuggestion', '/accassist', 'Aceptar peticion de asistencia de usuario', {{name="Player ID", help="ID of the player you want to help"}})