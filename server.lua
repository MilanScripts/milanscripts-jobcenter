ESX = exports['es_extended']:getSharedObject()

RegisterServerEvent('milanscripts:setJob', function(jobName)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return end

    local valid = false
    for _, job in pairs(Config.Jobs) do
        if job.name == jobName then
            valid = true
            break
        end
    end

    if not valid then
        if Config.AntiAbuse.mode == 'ahrp' then
            exports["ahrp-anticheat"]:ban(src, 'Trigger abuse in milanscripts:setJob.')
        elseif Config.AntiAbuse.mode == 'drop' then
            DropPlayer(src, 'Trigger abuse detected.')
        elseif Config.AntiAbuse.mode == 'trigger' then
            TriggerEvent(Config.AntiAbuse.customTrigger, src, 'Trigger abuse in milanscripts:setJob')
        end
        return
    end

    xPlayer.setJob(jobName, 0)
end)
