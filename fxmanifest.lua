fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Mobius'
description 'QBcore Shop Script using qb-target and OpenStore'
version '1.0.1'

shared_scripts {
    '@ox_lib/init.lua',  -- Add this line to initialize ox_lib
}

-- Client scripts
client_scripts {
    'client.lua'
}

-- Dependencies
dependencies {
    'qb-core'
}

