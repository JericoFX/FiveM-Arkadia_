ESX                			 = nil
local PlayersVente			 = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_poolcleaner:GiveItem')
AddEventHandler('esx_poolcleaner:GiveItem', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local Quantity = xPlayer.getInventoryItem(Config.Zones.Vente.ItemRequires).count

	if Quantity >= 20 then
		TriggerClientEvent('esx:showNotification', _source, _U('stop_npc'))
		return
	else
		local amount = Config.Zones.Vente.ItemAdd
		local item = Config.Zones.Vente.ItemDb_name
		xPlayer.addInventoryItem(item, amount)
		TriggerClientEvent('esx:showNotification', _source, 'Has recibido ~g~x' .. amount .. ' un contrato')
	end

end)

local function Vente(source)

	SetTimeout(Config.Zones.Vente.ItemTime, function()

		if PlayersVente[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local Quantity = xPlayer.getInventoryItem(Config.Zones.Vente.ItemRequires).count

			if Quantity < Config.Zones.Vente.ItemRemove then
				TriggerClientEvent('esx:showNotification', _source, '~r~No tienes mas '..Config.Zones.Vente.ItemRequires_name..' para entregar.')
				PlayersVente[_source] = false
			else
				local amount = Config.Zones.Vente.ItemRemove
				local item = Config.Zones.Vente.ItemRequires
				xPlayer.removeInventoryItem(item, amount)
				xPlayer.addMoney(Config.Zones.Vente.ItemPrice)
				TriggerClientEvent('esx:showNotification', _source, 'Has recibido ~g~$' .. Config.Zones.Vente.ItemPrice)
				Vente(_source)
			end

		end
	end)
end

RegisterServerEvent('esx_poolcleaner:startVente')
AddEventHandler('esx_poolcleaner:startVente', function()

	local _source = source

	if PlayersVente[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~¡Sal y regresa a la zona !')
		PlayersVente[_source] = false
	else
		PlayersVente[_source] = true
		TriggerClientEvent('esx:showNotification', _source, '~g~Entrega ~w~en curso...')
		Vente(_source)
	end
end)

RegisterServerEvent('esx_poolcleaner:stopVente')
AddEventHandler('esx_poolcleaner:stopVente', function()

	local _source = source

	if PlayersVente[_source] == true then
		PlayersVente[_source] = false
	else
		PlayersVente[_source] = true
	end
end)
