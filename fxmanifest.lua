fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'um-idcard-targetmenu'
author 'uyuyorum {um} (fork of SienkoV3)'
version '1.0.0'
license 'GPL-3.0 license'
repository 'https://github.com/alp1x/um-idcard-targetmenu'
description 'UM Identity Card Menu ox_lib with ox_target'

shared_scripts {
	'config.lua',
	'@ox_lib/init.lua',
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/main.lua',
	'version/version.lua'
}

dependencies {
	'um-idcard',
	'ox_target',
	'ox_lib'
}
