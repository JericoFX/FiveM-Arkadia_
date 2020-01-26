--CREATED BY SNAIL

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Stress Script'

version '0.0.0.0.0.0.2'

client_scripts {
    'client/main.lua',
    'config.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/main.lua',
	'server/classes/stress.lua',
    'config.lua'
}

dependencies {
	'mysql-async',
	'es_extended'
}
