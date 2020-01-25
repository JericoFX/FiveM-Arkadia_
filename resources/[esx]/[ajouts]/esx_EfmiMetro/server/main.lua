ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('esx_EfmiMetro:checkBalance', function(source, cb, amountNeeded)
	local xPlayer = ESX.GetPlayerFromId(source)
	local bankBalance = xPlayer.getAccount('bank').money
	cb(bankBalance >= amountNeeded)
end)

ESX.RegisterServerCallback('esx_EfmiMetro:buyTicket', function(source, cb, stationCode, price)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getMoney() >= price then
		xPlayer.removeMoney(price)
	end
	cb(true)
end)