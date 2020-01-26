--AddSpeedZoneForCoord(float x, float y, float z, float radius, float speed, BOOL p5);

local speedZoneActive = false
local blip
local speedZone
local speedzones = {}

_menuPool = NativeUI.CreatePool()
trafficmenu = NativeUI.CreateMenu("Menu de escenas", "~b~Ayuda de vigilancia de tráfico")
_menuPool:Add(trafficmenu)
_menuPool:MouseControlsEnabled(false)
_menuPool:ControlDisablingEnabled(false)

function ShowNotification(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(false, false)
end

function ObjectsSubMenu(menu)
  local submenu = _menuPool:AddSubMenu(menu, "Menu de objetos")
  local objects = {
    "Barreras",
    "Cono grande",
    "Cono pequeño",
    "Luces",
    "Carpa",
	"Pinchos",
}
  local objectlist = NativeUI.CreateListItem("Spawnear objetos", objects, 1, "Presiona enter para seleccionar el objeto a generar.")
  local deletebutton = NativeUI.CreateItem("Eliminar", "Eliminar objeto más cercano.")


  submenu:AddItem(deletebutton)
  deletebutton.Activated = function(sender, item, index)
    local theobject1 = 'prop_barrier_work05'
    local object1 = GetHashKey(theobject1)
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, object1, true) then
        local obj1 = GetClosestObjectOfType(x, y, z, 0.9, object1, false, false, false)
        DeleteObject(obj1)
    end

    local theobject2 = 'prop_roadcone01a'
    local object2 = GetHashKey(theobject2)
    if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, object2, true) then
        local obj2 = GetClosestObjectOfType(x, y, z, 0.9, object2, false, false, false)
        DeleteObject(obj2)
    end

    local theobject4 = 'prop_gazebo_02'
    local object4 = GetHashKey(theobject4)
    if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, object4, true) then
        local obj4 = GetClosestObjectOfType(x, y, z, 0.9, object4, false, false, false)
        DeleteObject(obj4)
    end

    local theobject5 = 'prop_roadcone02b'
    local object5 = GetHashKey(theobject5)
    if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, object5, true) then
        local obj5 = GetClosestObjectOfType(x, y, z, 0.9, object5, false, false, false)
        DeleteObject(obj5)
    end

    local theobject3 = 'prop_worklight_03b'
    local object3 = GetHashKey(theobject3)
    if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, object3, true) then
        local obj3 = GetClosestObjectOfType(x, y, z, 0.9, object3, false, false, false)
        DeleteObject(obj3)
    end
	
	local theobject6 = 'p_ld_stinger_s'
    local object6 = GetHashKey(theobject3)
    if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, object6, true) then
        local obj6 = GetClosestObjectOfType(x, y, z, 0.9, object6, false, false, false)
        DeleteObject(obj6)
    end
	
  end

  submenu:AddItem(objectlist)
  objectlist.OnListSelected = function(sender, item, index)
    local Player = GetPlayerPed(-1)
    local heading = GetEntityHeading(Player)
    local x, y, z = table.unpack(GetEntityCoords(Player, true))
     local object = item:IndexToItem(index)
        if object == objects[1] then
        local objectname = 'prop_barrier_work05'
          RequestModel(objectname)
          while not HasModelLoaded(objectname) do
            Citizen.Wait(1)
          end
            local obj = CreateObject(GetHashKey(objectname), x, y, z, true, false);
            PlaceObjectOnGroundProperly(obj)
            SetEntityHeading(obj, heading)
            FreezeEntityPosition(obj, true)
        elseif object == objects[2] then
            local objectname = 'prop_roadcone01a'
            RequestModel(objectname)
            while not HasModelLoaded(objectname) do
              Citizen.Wait(1)
            end
              local obj = CreateObject(GetHashKey(objectname), x, y, z, true, false);
              PlaceObjectOnGroundProperly(obj)
              SetEntityHeading(obj, heading)
              FreezeEntityPosition(obj, true)
        elseif object == objects[4] then
          local objectname = 'prop_worklight_03b'
          RequestModel(objectname)
          while not HasModelLoaded(objectname) do
            Citizen.Wait(1)
          end
            local obj = CreateObject(GetHashKey(objectname), x, y, z, true, false);
            PlaceObjectOnGroundProperly(obj)
            SetEntityHeading(obj, heading)
            FreezeEntityPosition(obj, true)
        elseif object == objects[3] then
            local objectname = 'prop_roadcone02b'
            RequestModel(objectname)
            while not HasModelLoaded(objectname) do
              Citizen.Wait(1)
            end
              local obj = CreateObject(GetHashKey(objectname), x, y, z, true, false);
              PlaceObjectOnGroundProperly(obj)
              SetEntityHeading(obj, heading)
              FreezeEntityPosition(obj, true)
        elseif object == objects[5] then
              local objectname = 'prop_gazebo_02'
              RequestModel(objectname)
              while not HasModelLoaded(objectname) do
                Citizen.Wait(1)
              end
                local obj = CreateObject(GetHashKey(objectname), x, y, z, true, false);
                PlaceObjectOnGroundProperly(obj)
                SetEntityHeading(obj, heading)
                FreezeEntityPosition(obj, true)
		elseif object == objects[6] then
            local objectname = 'p_ld_stinger_s'
            RequestModel(objectname)
            while not HasModelLoaded(objectname) do
              Citizen.Wait(1)
            end
              local obj = CreateObject(GetHashKey(objectname), x, y, z, true, false);
              PlaceObjectOnGroundProperly(obj)
              SetEntityHeading(obj, heading)
              FreezeEntityPosition(obj, true)
        end
end

end

function SpeedZoneSubMenu(menu)
  local submenu = _menuPool:AddSubMenu(menu, "Limitar velocidad")
  local radiusnum = {
    "25",
    "50",
    "75",
    "100",
    "125",
    "150",
    "175",
    "200",
  }

  local speednum = {
    "0",
    "5",
    "10",
    "15",
    "20",
    "25",
    "30",
    "35",
    "40",
    "45",
    "50",
  }

  local zonecreate = NativeUI.CreateItem("Crear zona", "Crea una zona con el radio y la velocidad especificados.")
  local zoneradius = NativeUI.CreateSliderItem("Radio", radiusnum, 1, false)
  local zonespeed = NativeUI.CreateListItem("Velocidad", speednum, 1)
  local zonedelete = NativeUI.CreateItem("Borrar zona", "Borra tu zona colocada.")

  submenu:AddItem(zoneradius)
  submenu:AddItem(zonespeed)
  submenu:AddItem(zonecreate)
  submenu:AddItem(zonedelete)

  zonecreate:SetRightBadge(BadgeStyle.Tick)

  submenu.OnSliderChange = function(sender, item, index)
        radius = item:IndexToItem(index)
        ShowNotification("Cambiando el radio a ~r~" .. radius)
  end

  submenu.OnListChange = function(sender, item, index)
    speed = item:IndexToItem(index)
    ShowNotification("Cambiando la velocidad a ~r~" .. speed)
  end

  zonedelete.Activated = function(sender, item, index)
      TriggerServerEvent('Disable')
      ShowNotification("Zonas deshabilitadas.")
  end

  zonecreate.Activated = function(sender, item, index)

      if not speed then
        speed = 0
      end

      if not radius then
        ShowNotification("~r~¡Por favor cambia el radio!")
        return
      end

          speedZoneActive = true
          ShowNotification("Zona de velocidad creada.")
          local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
          radius = radius + 0.0
          speed = speed + 0.0
      
          local streetName, crossing = GetStreetNameAtCoord(x, y, z)
          streetName = GetStreetNameFromHashKey(streetName)
      
          local message = "^* ^1Anuncio de Tráfico: ^r^*^7La policía ha ordenado que el tráfico en ^2" .. streetName .. " ^7se conduzca a una velocidad de ^2" .. speed .. "kmh ^7debido a un incidente." 
      
          TriggerServerEvent('ZoneActivated', message, speed, radius, x, y, z)
      

  end

end

ObjectsSubMenu(trafficmenu)
SpeedZoneSubMenu(trafficmenu)


AddEventHandler("object_spawner2", function()
    trafficmenu:Visible(not trafficmenu:Visible())
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
    end
end)



RegisterNetEvent('Zone')
AddEventHandler('Zone', function(speed, radius, x, y, z)

  blip = AddBlipForRadius(x, y, z, radius)
      SetBlipColour(blip,idcolor)
      SetBlipAlpha(blip,80)
      SetBlipSprite(blip,9)
  speedZone = AddSpeedZoneForCoord(x, y, z, radius, speed, false)

  table.insert(speedzones, {x, y, z, speedZone, blip})

end)

RegisterNetEvent('RemoveBlip')
AddEventHandler('RemoveBlip', function()

    if speedzones == nil then
      return
    end
    local playerPed = GetPlayerPed(-1)
    local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
    local closestSpeedZone = 0
    local closestDistance = 1000
    for i = 1, #speedzones, 1 do
        local distance = Vdist(speedzones[i][1], speedzones[i][2], speedzones[i][3], x, y, z)
        if distance < closestDistance then
            closestDistance = distance
            closestSpeedZone = i
        end
    end
    RemoveSpeedZone(speedzones[closestSpeedZone][4])
    RemoveBlip(speedzones[closestSpeedZone][5])
    table.remove(speedzones, closestSpeedZone)

end)