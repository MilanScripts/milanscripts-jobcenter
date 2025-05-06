fx_version 'cerulean'
game 'gta5'

author 'Arnhem Roleplay <MilanScritps>'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'locales/*.json',
    'client.lua'
}

server_scripts {
    '@es_extended/imports.lua',
    'server.lua'
}

lua54 'yes'
