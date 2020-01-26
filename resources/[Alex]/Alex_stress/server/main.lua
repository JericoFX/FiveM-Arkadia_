UsersStress = {}

function loadStress(source)
    local identifier = GetPlayerIdentifiers(source)[1]
    local user = MySQL.Sync.fetchAll("SELECT * FROM `users` WHERE `identifier` = @identifier", {
		['@identifier'] = identifier
    })
    if user[1] then
        UsersStress[source] = CreateStress(source, user[1].stress)
        print('Stress cargado al jugador : '..identifier..' Stress : '..UsersStress[source].GetStress())
        UsersStress[source].RefreshInfoInClient()
    else
        print('El sistema de stress ha fallado, el jugador no ha sido encontrado el la BD')
    end
end

RegisterServerEvent('snail_stress:init')
AddEventHandler('snail_stress:init',function()
	loadStress(source)
end)

RegisterServerEvent('snail_stress:addStress')
AddEventHandler('snail_stress:addStress',function(n, _source)
    local source = source
    if _source ~= nil then source = _source end
	UsersStress[source].AddStress(n)
end)

RegisterServerEvent('snail_stress:removeStress')
AddEventHandler('snail_stress:removeStress',function(n, _source)
    local source = source
    if _source ~= nil then source = _source end
	UsersStress[source].RemoveStress(n)
end)

RegisterServerEvent('snail_stress:setStress')
AddEventHandler('snail_stress:setStress',function(n, _source)
    local source = source
    if _source ~= nil then source = _source end
	UsersStress[source].SetStress(n)
end)