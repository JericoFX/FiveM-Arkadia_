ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function Policja()

	local xPlayers = ESX.GetPlayers()

	ilosc = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			ilosc = ilosc + 1
		end
	end

end

RegisterServerEvent('esx_gotowanie:koniec')
AddEventHandler('esx_gotowanie:koniec', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('meth_pooch', Config.koniec)
    TriggerClientEvent("esx_gotowanie:etap4", source)

end)

RegisterServerEvent("esx_gotowanie:pseudoefedryna")
AddEventHandler("esx_gotowanie:pseudoefedryna", function()
Policja()
	if ilosc < Config.LSPD then
		TriggerClientEvent("esx:showNotification", source, "~r~No hay ~b~Policías ~w~ suficientes!")
	else
	
    local xPlayer = ESX.GetPlayerFromId(source)

    local pseudoefedryna = xPlayer.getInventoryItem("pseudoefedryna")["count"]
    
    if pseudoefedryna > 99 then

		xPlayer.removeInventoryItem("pseudoefedryna",100)

        TriggerClientEvent("esx_gotowanie:etap1", source)
    else
        TriggerClientEvent("esx:showNotification", source, "~r~Usted no tiene pseudoefedrina!")
    end
	end
end)

RegisterServerEvent("esx_gotowanie:Aceton")
AddEventHandler("esx_gotowanie:Aceton", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local Aceton = xPlayer.getInventoryItem("aceton")["count"]
    
    if Aceton > 39 then

		xPlayer.removeInventoryItem("aceton",40)

        TriggerClientEvent("esx_gotowanie:etap2", source)
    else
        TriggerClientEvent("esx:showNotification", source, "~r~No tienes Acetona!")
    end
end)

RegisterServerEvent("esx_gotowanie:skladniki")
AddEventHandler("esx_gotowanie:skladniki", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local Pozostale = xPlayer.getInventoryItem("skladniki")["count"]
    
    if Pozostale > 0 then

		xPlayer.removeInventoryItem("skladniki",1)

        TriggerClientEvent("esx_gotowanie:etap3", source)
    else
        TriggerClientEvent("esx:showNotification", source, "~r~No tienes otros ingredientes!")
    end
end)



---- Sklep

RegisterServerEvent("esx_gotowanie:opcja1")
AddEventHandler("esx_gotowanie:opcja1", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local kasa = xPlayer.getBank()
    
    if kasa > 999 then

        xPlayer.addInventoryItem("pseudoefedryna",100)
        xPlayer.removeAccountMoney('bank', 1000)


    else
        TriggerClientEvent("esx:showNotification", source, "~r~No tienes suficiente dinero!")
    end
end)

RegisterServerEvent("esx_gotowanie:opcja2")
AddEventHandler("esx_gotowanie:opcja2", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local kasa = xPlayer.getBank()
    
    if kasa > 499 then

        xPlayer.addInventoryItem("aceton",40)
        xPlayer.removeAccountMoney('bank', 500)


    else
        TriggerClientEvent("esx:showNotification", source, "~r~No tienes suficiente dinero!")
    end
end)

RegisterServerEvent("esx_gotowanie:opcja3")
AddEventHandler("esx_gotowanie:opcja3", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local kasa = xPlayer.getBank()
    
    if kasa > 349 then

        xPlayer.addInventoryItem("skladniki",1)
        xPlayer.removeAccountMoney('bank', 350)


    else
        TriggerClientEvent("esx:showNotification", source, "~r~No tienes suficiente dinero!")
    end
end)
