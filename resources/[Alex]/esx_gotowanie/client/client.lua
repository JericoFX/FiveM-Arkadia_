Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
    local PlayerData = {}
    ESX = nil

    local ped = GetPlayerPed(-1)
    local playerPed = PlayerPedId()

    local gotowanko = false
    local etap1 = false
    local etap2 = false
    local etap3 = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


Citizen.CreateThread(function()
	Citizen.Wait(1000)
	while true do
	   Citizen.Wait(0)

		for i=1, #Config.gotowanie do
			if (GetDistanceBetweenCoords(GetEntityCoords(ped), Config.gotowanie[i].x, Config.gotowanie[i].y, Config.gotowanie[i].z, true) < 12) then
				DrawMarker(Config.MarkerType, Config.gotowanie[i].x, Config.gotowanie[i].y, Config.gotowanie[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z-2.0, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 80, false, true, 2, false, false, false, false)
				if (GetDistanceBetweenCoords(GetEntityCoords(ped), Config.gotowanie[i].x, Config.gotowanie[i].y, Config.gotowanie[i].z, true) < 1) and gotowanko == false then
				ESX.ShowHelpNotification('~w~Pulsa ~b~E ~w~para abrir el menu de cocina!')
				if IsControlPressed(0, Keys['E']) then
				menu_gotowanie()
				end
				end
			end
		
		end
	
	
	end
	
	
	end)

function menu_gotowanie()
    local elems = {
        {label = 'Mezcla de pseudoefedrina | Etapa 1/4', value = 'etap1'},
		{label = 'Evaporación de Acetona', value = 'etap2'},
        {label = 'Mezclando otros ingredientes', value = 'etap3'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Gotowanie',{
        title    = '<font color="red"><b>Menu Gotowania<b></font> | <font color="red">Mety</font>',
        align = 'top-left',
        elements = elems
    },
    function(data, menu) 
     if data.current.value == 'etap1' then
      TriggerServerEvent('esx_gotowanie:pseudoefedryna')
      elseif data.current.value == 'etap2' and etap1 == true and etap3 == false then
      TriggerServerEvent('esx_gotowanie:Aceton')
	  elseif etap1 == false or etap3 == true then
      Fail()
	  elseif data.current.value == 'etap3' and etap2 == true then
      TriggerServerEvent('esx_gotowanie:skladniki')
      elseif etap2 == false then
        Fail()
        end
     end,
     function(data, menu)
        menu.close()
    end)
Citizen.Wait(8000)
ESX.UI.Menu.CloseAll()
end


Citizen.CreateThread(function()
		Citizen.Wait(1000)
       while true do
          Citizen.Wait(0)

           for i=1, #Config.pakowanie do
               if (GetDistanceBetweenCoords(GetEntityCoords(ped), Config.pakowanie[i].x, Config.pakowanie[i].y, Config.pakowanie[i].z, true) < 12) and etap3 == true then
                   DrawMarker(Config.MarkerType, Config.pakowanie[i].x, Config.pakowanie[i].y, Config.pakowanie[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z-2.0, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 80, false, true, 2, false, false, false, false)
                   if (GetDistanceBetweenCoords(GetEntityCoords(ped), Config.pakowanie[i].x, Config.pakowanie[i].y, Config.pakowanie[i].z, true) < 1) and gotowanko == false then
                   ESX.ShowHelpNotification('~w~Pulsa ~b~E ~w~empaquetar los productos en una bolsa!')
                   if IsControlPressed(0, Keys['E']) then
                 Citizen.Wait(500)
                 TriggerServerEvent('esx_gotowanie:koniec')
                   end
                   end
               end
           end
       end
       end)

function Fail()
ESX.UI.Menu.CloseAll()
     for i=1, #Config.gotowanie do
	  gotowanko = true
      ESX.ShowNotification('~r~Mal orden, ~b~Se han formado humos nocivos!')
      AddExplosion(Config.gotowanie[i].x, Config.gotowanie[i].y, Config.gotowanie[i].z, "EXPLOSION_PROPANE", 3.0, false, false, true, 3.0 );
      DoScreenFadeOut(1000);
      Citizen.Wait(300)
      SetPedIsDrunk(ped, true)
      SetPedMotionBlur(ped, true)
      SetTimecycleModifier("spectator5")
      Citizen.Wait(1000)
      DoScreenFadeIn(1000);
     Citizen.Wait(10000)
     DoScreenFadeOut(1000);
     SetPedIsDrunk(ped, false)
     SetPedMotionBlur(ped, false)
     Citizen.Wait(1000)
     DoScreenFadeIn(1000);
     ClearTimecycleModifier()
	 ESX.ShowNotification('Debes esperar ahora ~b~15 ~w~segundos antes del siguiente ~g~cocinado!')
	  Citizen.Wait(15000)
	  gotowanko = false
	  etap1 = false 
	  etap2 = false
	  etap3 = false
end
   end

function reset()
ESX.UI.Menu.CloseAll()
    Citizen.Wait(1000)
	  gotowanko = false
	  etap1 = false 
	  etap2 = false
	  etap3 = false
end

function loadAnimDict( dict )
    Citizen.Wait(0)
while ( not HasAnimDictLoaded( dict ) ) do
   RequestAnimDict( dict )
   Citizen.Wait(0)
end
end

RegisterNetEvent('esx_gotowanie:etap1')
AddEventHandler('esx_gotowanie:etap1', function()
ESX.UI.Menu.CloseAll()
        gotowanko = true
        etap1 = true
        FreezeEntityPosition(PlayerPedId(), true)
        loadAnimDict( "anim@amb@business@coc@coc_unpack_cut@" )
        TaskPlayAnim(ped, "anim@amb@business@coc@coc_unpack_cut@", "fullcut_cycle_v7_cokecutter", 8.0, 8.0, 4000.0, 1, 32.0, 0, 0, 0 )
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa!~w~Restante: ~b~10')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~9')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~8')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~7')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~6')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~5')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~4')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~3')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~2')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~La agitación de la pseudoefedrina continúa! ~w~Restante: ~b~1')
      Citizen.Wait(1000)
      ESX.ShowNotification('~g~Skończyłeś ~w~Mieszać ~r~Pseudoefedryne! ~b~Etap: 1/4')
        ClearPedTasks(ped)
        FreezeEntityPosition(PlayerPedId(), false)
        TriggerServerEvent('esx_gotowanie:etap1')
	  gotowanko = false
	  etap2 = false
	  etap3 = false
end)

RegisterNetEvent('esx_gotowanie:etap2')
AddEventHandler('esx_gotowanie:etap2', function()
ESX.UI.Menu.CloseAll()
        etap2 = true
		gotowanko = true
        FreezeEntityPosition(PlayerPedId(), true)
        loadAnimDict( "anim@amb@business@meth@meth_monitoring_cooking@cooking@" )
        TaskPlayAnim(ped, "anim@amb@business@meth@meth_monitoring_cooking@cooking@", "look_around_v8_cooker", 8.0, 8.0, 4000.0, 1, 32.0, 0, 0, 0 )
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore!~w~Restante: ~b~10')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~9')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~8')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~7')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~6')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~5')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~4')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~3')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~2')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Usted está esperando que la acetona se evapore! ~w~Restante: ~b~1')
      Citizen.Wait(1000)
      ESX.ShowNotification('~g~Acetona ~r~replicado! ~b~Etapa: 2/4')
        ClearPedTasks(ped)
        FreezeEntityPosition(PlayerPedId(), false)
        TriggerServerEvent('esx_gotowanie:etap2')
	  gotowanko = false
end)

RegisterNetEvent('esx_gotowanie:etap3')
AddEventHandler('esx_gotowanie:etap3', function()
ESX.UI.Menu.CloseAll()
        gotowanko = true
        FreezeEntityPosition(PlayerPedId(), true)
        loadAnimDict( "anim@amb@business@coc@coc_unpack_cut_left@" )
        TaskPlayAnim(ped, "anim@amb@business@coc@coc_unpack_cut_left@", "coke_cut_v4_coccutter", 8.0, 8.0, 4000.0, 1, 32.0, 0, 0, 0 )
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico!~w~Restante: ~b~10')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~9')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~8')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~7')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~6')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~5')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~4')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~3')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~2')
        Citizen.Wait(1000)
        ESX.ShowHelpNotification('~r~Se mezcla yodo, fósforo rojo y ácido clorhídrico! ~w~Restante: ~b~1')
      Citizen.Wait(1000)
      ESX.ShowNotification('~g~Wymieszałeś ~r~ingredientes! ~b~Etapa: 3/4')
        ClearPedTasks(ped)
        FreezeEntityPosition(PlayerPedId(), false)
        TriggerServerEvent('esx_gotowanie:etap3')
        gotowanko = false  
        etap3 = true
end)

RegisterNetEvent('esx_gotowanie:etap4')
AddEventHandler('esx_gotowanie:etap4', function()
   gotowanko = true
    FreezeEntityPosition(PlayerPedId(), true)
    TriggerEvent('skinchanger:change', "bags_1", 45)
    loadAnimDict( "mp_missheist_ornatebank" )
	TaskPlayAnim(ped, "mp_missheist_ornatebank", "stand_cash_in_bag_loop", 8.0, 8.0, 4000.0, 1, 32.0, 0, 0, 0 )
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso!~w~Restante: ~b~10')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~9')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~8')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~7')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~6')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~5')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~4')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~3')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~2')
    Citizen.Wait(1000)
    ESX.ShowHelpNotification('~r~Embalaje de metanfetamina está en progreso! ~w~Restante: ~b~1')
    Citizen.Wait(1000)
    ClearPedTasks(ped)
    FreezeEntityPosition(PlayerPedId(), false) 
    reset()
end)



Citizen.CreateThread(function()
	Citizen.Wait(1000)
    while true do
       Citizen.Wait(0)

        for i=1, #Config.sklep do
            if (GetDistanceBetweenCoords(GetEntityCoords(ped), Config.sklep[i].x, Config.sklep[i].y, Config.sklep[i].z, true) < 12) then
                DrawMarker(Config.MarkerType, Config.sklep[i].x, Config.sklep[i].y, Config.sklep[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z-2.0, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 80, false, true, 2, false, false, false, false)
                if (GetDistanceBetweenCoords(GetEntityCoords(ped), Config.sklep[i].x, Config.sklep[i].y, Config.sklep[i].z, true) < 1) then
                ESX.ShowHelpNotification('~w~Pulsa ~b~E ~w~para abrir el menu de la tienda!')
                if IsControlPressed(0, Keys['E']) then
            menu_sklep()
                end
                end
            end
        end
    end
    end)


function menu_sklep()
    local elems = {
        {label = 'Pseudoefedryna x100', value = 'opcja1'},
		{label = 'Acetona x40', value = 'opcja2'},
        {label = 'Otros ingredientes x1', value = 'opcja3'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Sklep',{
        title    = '<font color="green"><b>SKLEP<b></font> | <font color="red">Skladniki do Metamfetaminy</font>',
        align = 'top-left',
        elements = elems
    },
    function(data, menu) 
     if data.current.value == 'opcja1' then
      TriggerServerEvent('esx_gotowanie:opcja1')
      ESX.UI.Menu.CloseAll()
      elseif data.current.value == 'opcja2' then
      TriggerServerEvent('esx_gotowanie:opcja2')
      ESX.UI.Menu.CloseAll()
	  elseif data.current.value == 'opcja3' then
      TriggerServerEvent('esx_gotowanie:opcja3')
      ESX.UI.Menu.CloseAll()
        end
     end,
     function(data, menu)
        menu.close()
    end)
    Citizen.Wait(5000)
    ESX.UI.Menu.CloseAll()
end