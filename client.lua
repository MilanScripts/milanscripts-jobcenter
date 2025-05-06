lib.locale()

local shown = false
local npc

CreateThread(function()
    RequestModel(Config.NPC.model)
    while not HasModelLoaded(Config.NPC.model) do Wait(0) end

    npc = CreatePed(0, Config.NPC.model, Config.NPC.coords.x, Config.NPC.coords.y, Config.NPC.coords.z - 1.0, Config.NPC.coords.w, false, true)

    if Config.NPC.scenario then TaskStartScenarioInPlace(npc, Config.NPC.scenario, 0, true) end
    if Config.NPC.freeze then FreezeEntityPosition(npc, true) end
    if Config.NPC.invincible then SetEntityInvincible(npc, true) end

    SetBlockingOfNonTemporaryEvents(npc, true)

    if Config.Blip.enabled then
        local blip = AddBlipForCoord(Config.NPC.coords.xyz)
        SetBlipSprite(blip, Config.Blip.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, Config.Blip.scale)
        SetBlipColour(blip, Config.Blip.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.Blip.label)
        EndTextCommandSetBlipName(blip)
    end

    if Config.UseTarget then
        exports.ox_target:addBoxZone({
            coords = Config.NPC.coords.xyz,
            size = vec3(1.5, 1.5, 2.0),
            rotation = Config.NPC.coords.w,
            options = {
                {
                    name = 'jobcenter',
                    icon = 'fas fa-briefcase',
                    label = locale('open_menu'),
                    onSelect = function()
                        openJobMenu()
                    end
                }
            }
        })
    else
        CreateThread(function()
            while true do
                local sleep = 1000
                local coords = GetEntityCoords(PlayerPedId())
                local dist = #(coords - Config.NPC.coords.xyz)

                if dist < 2.0 then
                    sleep = 0
                    if not shown then
                        shown = true
                        lib.showTextUI(locale('open_menu'), {
                            position = "left-center",
                            icon = "briefcase"
                        })
                    end

                    if IsControlJustReleased(0, Config.Key) then
                        openJobMenu()
                    end
                else
                    if shown then
                        shown = false
                        lib.hideTextUI()
                    end
                end

                Wait(sleep)
            end
        end)
    end
end)

function openJobMenu()
    local options = {}

    for _, job in pairs(Config.Jobs) do
        options[#options + 1] = {
            title = job.label,
            description = job.description,
            icon = 'briefcase',
            onSelect = function()
                TriggerServerEvent('milanscripts:setJob', job.name)
            end
        }
    end

    lib.registerContext({
        id = 'jobcenter_menu',
        title = locale('menu_title'),
        options = options
    })

    lib.showContext('jobcenter_menu')
end