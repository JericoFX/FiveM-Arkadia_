RegisterNetEvent("showSuccessNotif")
AddEventHandler("showSuccessNotif", function(mes)
	SendNUIMessage({
		showDone = true,
		text = mes
	})
end)

function showDoneNotif(mes)
	SendNUIMessage({
		showDone = true,
		text = mes
	})
end

RegisterNetEvent("showWarnNotif")
AddEventHandler("showWarnNotif", function(mes)
	SendNUIMessage({
		showWarn = true,
		text = mes
	})
end)

RegisterNetEvent("showErrorNotif")
AddEventHandler("showErrorNotif", function(mes)
	SendNUIMessage({
		showError = true,
		text = mes
	})
end)

function showNoneNotif(mes)
	SendNUIMessage({
		showNone = true,
		text = mes
	})
end

