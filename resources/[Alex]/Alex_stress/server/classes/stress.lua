function CreateStress(source, stress)

    --ATRIBUTOS
    local self = {}

    self.source = source
    self.identifier = GetPlayerIdentifiers(source)[1]
    self.stress = stress

    --MÉTODOS
    local rMethods = {}

    rMethods.RefreshInfoInClient = function(type)
        if type == nil then type = 'none' end
        TriggerClientEvent('snail_stress:refresh', self.source, self.stress, type)
    end

    rMethods.AddStress = function(s)
        if type(s) == "number" then
            if s >= 0 then
                local newStress = self.stress + s
                if newStress > 100 then newStress = 100 end
                self.stress = newStress
                MySQL.Async.execute("UPDATE users SET stress = @quantity WHERE identifier = @identifier",
                {
                    ['@identifier'] = self.identifier,
                    ['@quantity'] = self.stress
                }, function(cb)
                    rMethods.RefreshInfoInClient('add')
                end)
            else
                print('Error: El valor introducido debe ser un número positivo o mayor a 0')
            end
        else
            print('Error: El valor introducido debe ser un número íntegro.')
        end
    end

    rMethods.RemoveStress = function(s)
        if type(s) == "number" then
            if s >= 0 then
                local newStress = self.stress - s
                if newStress < 0 then newStress = 0 end
                self.stress = newStress
                MySQL.Async.execute("UPDATE users SET stress = @quantity WHERE identifier = @identifier",
                {
                    ['@identifier'] = self.identifier,
                    ['@quantity'] = self.stress
                }, function(cb)
                    rMethods.RefreshInfoInClient('remove')
                end)
            else
                print('Error: El valor introducido debe ser un número positivo o mayor a 0')
            end
        else
            print('Error: El valor introducido debe ser un número íntegro.')
        end
    end

    rMethods.SetStress = function(s)
        if type(s) == "number" then
            if s >= 0 and s <= 100 then
                local newStress = s
                self.stress = s
                MySQL.Async.execute("UPDATE users SET stress = @quantity WHERE identifier = @identifier",
                {
                    ['@identifier'] = self.identifier,
                    ['@quantity'] = self.stress
                }, function(cb)
                    rMethods.RefreshInfoInClient('set')
                end)
            else
                print('Error: El valor introducido debe ser un número entre 0 y 100.')
            end
        else
            print('Error: El valor introducido debe ser un número íntegro.')
        end
    end

    rMethods.GetStress = function()
        if self.stress then
            return self.stress
        else
            print('Error: Algo está mal. Contacta con Miguel Reyes.')
        end
    end

    return rMethods
end