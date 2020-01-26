-- creamos la funcion

ESX = nil
CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


function store(source)
    -- ESX.GetPlayerFromId
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getMoney()
    local price = config.price
    
    if (price>money) then

        TriggerClientEvent('esx:showNotification',source, "~r~No tienes dinero.") 
        else
            TriggerClientEvent('esx:showNotification',source, "~g~Firmando Contrato...") 
            Citizen.Wait(5000)

            xPlayer.removeMoney(price)

            Citizen.Wait(10000)
            CreateVehicle(GetHashKey(config.model), -2086.6, -510.75, 11.67, 48.4, false, false)
    end
end

-- ejecutamos la funcion con el comando /testeo

-- RegisterCommand("testeo", function(source, args) store(source) end)
RegisterServerEvent("diablito_alquileres:alquilar")
AddEventHandler("diablito_alquileres:alquilar", function(source) store(source) end)