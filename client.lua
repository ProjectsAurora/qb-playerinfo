local QBCore = exports['qb-core']:GetCoreObject()

local function ShowPlayerDetails()
    local player = QBCore.Functions.GetPlayerData()
    
    local menu = {
        {
            header = "Player Details",
            icon = 'fas fa-info-circle', -- Added a unique icon for Player Details
            isMenuHeader = true, -- Menu title
        },
        {
            header = "Server ID",
            txt = tostring(GetPlayerServerId(PlayerId())),
            icon = 'fas fa-server'
        },
        {
            header = "Citizen ID",
            txt = player.citizenid,
            icon = 'fas fa-id-card'
        },
        {
            header = "Name",
            txt = player.charinfo.firstname .. " " .. player.charinfo.lastname,
            icon = 'fas fa-user'
        },
        {
            header = "Age",
            txt = player.charinfo.birthdate,
            icon = 'fas fa-birthday-cake'
        },
        {
            header = "Cash",
            txt = "$" .. tostring(player.money.cash),
            icon = 'fas fa-wallet'
        },
        {
            header = "Bank",
            txt = "$" .. tostring(player.money.bank),
            icon = 'fas fa-university'
        },
        {
            header = "Job",
            txt = player.job.name .. " - " .. (player.job.grade.name or 'No Grade'),
            icon = 'fas fa-briefcase'
        }
    }

    exports['qb-menu']:openMenu(menu)
end

RegisterCommand('showdetails', function()
    ShowPlayerDetails()
end, false)

RegisterKeyMapping('showdetails', 'Show Player Details', 'keyboard', 'F9')
