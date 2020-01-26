local MeeleWeapons = {
    ["WEAPON_NIGHTSTICK"] = 0.1,
    ["WEAPON_BAT"] = 0.00001
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)

		for weapon, modifier in pairs(MeeleWeapons) do
			if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey(weapon) then
				SetPlayerMeleeWeaponDamageModifier(PlayerId(), v)
			end
		end
    end
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local ped = PlayerPedId()
            	if IsPedArmed(ped, 6) then
	    	DisableControlAction(1, 140, true)
            	DisableControlAction(1, 141, true)
            	DisableControlAction(1, 142, true)
        end
    end
end)