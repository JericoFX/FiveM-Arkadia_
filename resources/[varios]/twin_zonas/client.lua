local safezones = {
	{x = 227.1654, y = -785.5525, z = 29.90724}, --GARAGE
	{x = 416.2167, y = -986.7484, z = 28.55891}, --COMISARIA
	{x = 293.3671, y = -587.1848, z = 42.60296}, --HOSPITAL
}
local distance = 50.0

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))
		for i,v in pairs(safezones) do
			if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < distance then
				drawTxt("ESTO ES ~r~ZONA SEGURA",2, 1, 0.83, 0.940, 0.87,255,255,255,255)
			end
		end
	end
end)

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(0.70, 0.70)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x , y)
end

