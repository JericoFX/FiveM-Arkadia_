-- Announcing
TriggerEvent('es:addGroupCommand', 'announce', "admin", function(source, args, user)
	TriggerClientEvent('announce', -1, "~o~ANNONCE", table.concat(args, " "), 5)
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insuficiente autorizacion !")
end, {help = "Anunciar un mensaje a todo el servidor", params = {{name = "announcement", help = "Un Anuncio"}}})