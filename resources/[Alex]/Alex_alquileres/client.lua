ESX = nil
CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do 

        DrawMarker(23, -2086.67, -510.6, 11.15, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100,  false, true, 2, true, false, false, false)
        position = GetEntityCoords(PlayerPedId())

        if (GetDistanceBetweenCoords(position.x, position.y, position.z, -2086.67, -510.6, 11.15, false) <= (1.5/2)) 
        then
            TriggerEvent("esx:showHelpNotification", "~w~Pulsa ~INPUT_PICKUP~ ~r~Para alquilar un Monopatín ~w~- por " .. config.price .. "$")
            if (IsControlJustReleased (0,38)) then 
                TriggerServerEvent("diablito_alquileres:alquilar", GetPlayerServerId(GetPlayerIndex()))
                -- print(GetPlayerServerId(GetPlayerIndex()))
            end
        end
        -- print(position.x)
        Citizen.Wait(3)
    end
end)


