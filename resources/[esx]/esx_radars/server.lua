ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('fineAmount')
AddEventHandler('fineAmount', function(mphspeed)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local truespeed = mphspeed
	if truespeed >= 60 and truespeed <= 70 then
	xPlayer.removeMoney(Config.Fine)
	end
	if truespeed >= 70 and truespeed <= 80 then
	xPlayer.removeMoney(Config.Fine2)
	end
	if truespeed >= 80 and truespeed <= 100 then
	xPlayer.removeMoney(Config.Fine3)
	end
	if truespeed >= 100 and truespeed <= 500 then
	xPlayer.removeMoney(Config.Fine4)
	end
	CancelEvent()
end)
