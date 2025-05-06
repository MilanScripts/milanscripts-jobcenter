fx_version 'cerulean'
game 'gta5'

author 'Arnhem Roleplay <MilanScripts>' -->> *Scarlot Here*: He somehow managed to mess up his own name, so I fixed it for him.
description 'A FiveM script enabling players to choose jobs via an NPC, with customizable settings, anti-abuse features, and map integration.'
version '1.0.0'

lua54 'yes'

contributors {
    "MilanScripts <https://github.com/MilanScripts>",
    "Scarlot <https://github.com/Scarlot-Ruskipy>"
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'locales/*.json',
    'client.lua'
}

server_scripts {
    'server.lua'
}
