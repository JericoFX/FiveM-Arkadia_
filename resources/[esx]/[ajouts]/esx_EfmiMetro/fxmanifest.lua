fx_version 'adamant'
game 'gta5'

server_scripts{
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/fi.lua',
	'locales/en.lua',
	'locales/sw.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/fi.lua',
	'locales/en.lua',
	'locales/sw.lua',
	'client/main.lua',
	'config.lua',

	--Stations
	'client/stations/davis-station.lua',
	'client/stations/pillboxsouth-station.lua',
	'client/stations/littleseoul-station.lua',
	'client/stations/delperro-station.lua',
	'client/stations/portoladrive-station.lua',
	'client/stations/burton-station.lua',
	'client/stations/strawberry-station.lua',
	'client/stations/puerto-del-sol-station.lua',
	'client/stations/lsia-station.lua',
	'client/stations/lsiaparking-station.lua'
}

dependencies{
	'es_extended'
}