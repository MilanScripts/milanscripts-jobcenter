ESX = exports['es_extended']:getSharedObject()

local cooldowns = {}

RegisterServerEvent('milanscripts:setJob', function(jobName)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    local currentTime = os.time()
    if cooldowns[src] and currentTime - cooldowns[src] < Config.CooldownTime then
        DropPlayer(src, 'You are triggering this event too frequently.')
        return
    end
    
    cooldowns[src] = currentTime

    local valid = false
    for _, job in pairs(Config.Jobs) do
        if job.name == jobName then
            valid = true
            break
        end
    end

    if not valid then
        print(('[milanscripts:setJob] Invalid job attempt by player %s (ID: %d) for job: %s'):format(xPlayer.getName(), src, jobName))

        if Config.AntiAbuse.mode == 'drop' then
            DropPlayer(src, 'Trigger abuse detected.')
        elseif Config.AntiAbuse.mode == 'trigger' then
            TriggerEvent(Config.AntiAbuse.customTrigger, src, 'Trigger abuse in milanscripts:setJob')
        end
        return
    end

    xPlayer.setJob(jobName, 0)

    print(('[milanscripts:setJob] Player %s (ID: %d) changed job to: %s'):format(xPlayer.getName(), src, jobName))
end)