# FiveM-Arkadia_

French FiveM Server Edited by ikNox#6088

**Change the login password :**

* resources\ServerPassword\server.lua ligne 7

**Change the password translation :**

* resources\ServerPassword\client.lua ligne 56 & 65

**Discord Bot :**

* "[admin]\FiveM-BanSql-1.0.8\config.lua"

* "[esx]\\[discord]\DiscordBot\config.lua

* "[esx]\\[discord]\esx_discord_bot\config.lua"

**Change the IP announcement when opening the server :**

* "[esx]\\[discord]\DiscordBot\server\Server.lua ligne 66

**DiscordRichPresence :**

* "[esx]\\[discord]\DiscordRichPresence\client.lua" ligne 5, 7, 24, 26, 28, 30, 35, 37, 39, 43, 45, 48, 50 & 52


**ENGLISH**

**The glitch of the chests and negative invoices are patched as well as the resources secured against Moders by kikants.
(of course they will always be able to go through certain things with knowledge)**

**To change menu images :**

* "[esx]\\[ui]\esx_menu_default\html\img\header"

**If you have an error with screenshot-basic go re-download it**

**To add job images or changes :**

"[hud]\esx_customui\html\img" (Name the image with the job name)

**Change the name of the character selection menu :**

* "[esx]\\[base]\esx_kashacters\html\ui.html"

**Changing the LoadingScreen (Name and Image) :**

* "[hud]\panzar-load\edit_this.html"
* "[hud]\panzar-load\keks.css"

**Change the starting money :**

* "[essential]\essentialmode\server\util.lua"

**Change the message "Synchronisation de votre personnage." :**


* resources\\[essential]\es_extended\server\functions.lua ligne 110

**A Semi-Whitelist script is also available, to use it launch "esx_douane" then direction :**

**ENGLISH
"reboot\server" uncommented line 32 to 37 and change the time at which you want the whitelist to start and at which time you want to stop it.**

**Change the name of the pause menu :**

* resources\[esx]\\[non-esx]\pausemenu-title\server_name.lua ligne 12, 23 & 27

**Change the name of the map**

* Renommé Arkadia_Map & Arkadia_Map_ / Renamed Arkadia_Map & Arkadia_Map_

**Change the image of the F5 menu**

* resources\[esx]\\[non-esx]\Arkadia_personalmenu\stream\commonmenu.ytd

* open commonmenu.ytd with OpenIV and change the image

# Key Bindings
```
F2 Quick interaction menu
F5 Interaction menu
F6 Job Menu
F8 Console*
F9 Organisation Menu
F10 Phone
F11 Scoreboard
SHIFT + 1 Teleport to waypoint
HOME Es_admin

L Car trunk

Ctrl Crouch
X Hands Up
Y radargun menu open 246
E radargun freeze 38

Text Commands
/ano Anonymous message
/ooc Message Outside Roleplay
/report Sent a message to the admin
/r ID Respond privately to a /report
/me 3D Text
```

# Jobs List
```
Abatteur = slaughterer
Couturier = tailor
Bûcheron = lumberjack
Ambulance = ambulance
Police = police
Mécano = mecano
Pompiste = pompiste
Vigneron = vigne
Taxi = taxi
Armurerie = ammu
Mixologist = fueler
Journaliste = journaliste
```

# Organisation List
```
Famillies = famillies
Clan Kano =kano
LaZone = lazone
Mercenaire = mercenaire
Podolskaia = podolskaia
Syndicat = syndicat
```

# Admin Commands

**dding a Business to a Player**
* /setjob ID NomMetier Grade

**Adding an Gang to a Player**
* /setjob2 ID NomMetier Grade

**Banning a player**
* /ban ID Jour(0 = Permanent) Raison

**Banning an offline player**
* /banoffline JOUR NomSteam
* /reason Raison

**Unban one player**
* /unban NomSteam

**Give un item/**
* /giveitem ID NomItem Nombre

**Give a weapon**
* /giveweapon ID NomArme Munition

**Open the es_admin menu**
* Touche HOME

**Open the Spectator menu**
* Touche 9 ou /spec.
* Voir sont inventaire Touche G
