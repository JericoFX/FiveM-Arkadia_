Config = {}

Config.admin_groups = {"admin","superadmin"} -- groups that can use admin commands
Config.admin_level = 3 -- min admin level that can use admin commands
Config.banformat = "BANEADO!\nRazon: %s\nExpira: %s\nBaneado por: %s (Ban ID: #%s)" -- message shown when banned (1st %s = reason, 2nd %s = expire, 3rd %s = banner, 4th %s = ban id)
Config.popassistformat = "Jugador %s necesita ayuda\nEscribe <span class='text-success'>/accassist %s</span> para aceptar o <span class='text-danger'>/decassist</span> para declinar" -- popup assist message format
Config.chatassistformat = "Jugador %s necesita ayuda\nEscribe ^2/accassist %s^7 para aceptar o ^1/decassist^7 para declinar" -- chat assist message format
Config.warning_screentime = 8.5 * 1000 -- warning display length (in ms)