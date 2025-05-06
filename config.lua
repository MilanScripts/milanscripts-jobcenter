Config = {}

Config.UseTarget = false -- true = ox_target, false = E key

Config.NPC = {
    model = 'cs_bankman',
    coords = vec4(-268.61, -957.24, 31.22, 205.0),
    scenario = 'WORLD_HUMAN_CLIPBOARD',
    freeze = true,
    invincible = true
}

Config.Blip = {
    enabled = true,
    label = 'Job Center',
    sprite = 351,
    color = 47,
    scale = 0.7
}

Config.Jobs = {
    {
        name = 'police',
        label = 'Police',
        description = 'Uphold the law.'
    },
    {
        name = 'mechanic',
        label = 'Mechanic',
        description = 'Fix and upgrade vehicles.'
    },
    {
        name = 'taxi',
        label = 'Taxi',
        description = 'Drive people around.'
    },
    {
        name = 'ambulance',
        label = 'Ambulance',
        description = 'Help the injured.'
    }
}

Config.Key = 38 -- E

Config.AntiAbuse = {
    mode = 'ahrp', -- 'drop' or 'trigger' (dont use AHRP since its created for Arnhem Roleplay)
    customTrigger = 'banPlayer',
}