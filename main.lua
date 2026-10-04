-- Gyuvape Main Entrypoint Loader (GitHub Deployed)
repeat
    task.wait()
until game:IsLoaded()

if shared.vapeloading and coroutine.status(shared.vapeloading) ~= "dead" then
    return
end
shared.vapeloading = coroutine.running()

if shared.vape then
    shared.vape:Uninject()
end

local repoUrl = "https://raw.githubusercontent.com/GyxChexn/GyuvapeBedwarsCheat/main/"
local prefix = "GyuvapeBedwarsCheat/"

local isfile = isfile or function(FilePath: string)
    local Success, Contents = pcall(function()
        return readfile(FilePath)
    end)
    return Success and Contents ~= nil and Contents ~= ""
end

local isfolder = isfolder or function(FolderPath: string)
    local Success = pcall(function()
        return listfiles(FolderPath)
    end)
    return Success
end

local makefolder = makefolder or function() end

local function EnsureDirectory(FilePath: string)
    local parts = FilePath:split("/")
    local current = ""
    for i = 1, #parts - 1 do
        current = current == "" and parts[i] or (current .. "/" .. parts[i])
        if not isfolder(current) then
            pcall(makefolder, current)
        end
    end
end

local function DownloadFile(FilePath: string, Reader)
    if not isfile(FilePath) then
        EnsureDirectory(FilePath)
        -- strip prefix for github URL
        local remotePath = FilePath:gsub("^" .. prefix, "")
        local Success, Response = pcall(function()
            return game:HttpGet(repoUrl .. remotePath, true)
        end)
        if not Success or Response == "404: Not Found" then
            error("Failed to download " .. FilePath .. ": " .. tostring(Response))
        end
        writefile(FilePath, Response)
    end
    return (Reader or readfile)(FilePath)
end

local vape, RunPremium
local loadstring = function(...)
    local Chunk, Error = loadstring(...)
    if Error and vape then
        vape:CreateNotification("Vape", "Failed to load : " .. tostring(Error), 30, "alert")
    end
    return Chunk
end

local queue_on_teleport = queue_on_teleport or function() end
local cloneref = cloneref or function(Reference: Instance)
    return Reference
end

local Players: Players = cloneref(game:GetService("Players"))
local HttpService: HttpService = cloneref(game:GetService("HttpService"))

local function FinishLoading()
    vape.Init = nil
    vape:Load()
    shared.vapeloading = nil

    local TeleportedServers: boolean?
    vape:Clean(Players.LocalPlayer.OnTeleport:Connect(function()
        if (not TeleportedServers) and (not shared.VapeIndependent) then
            TeleportedServers = true
            local TeleportScript: string = [[
                shared.vapereload = true
                loadstring(game:HttpGet('https://raw.githubusercontent.com/GyxChexn/GyuvapeBedwarsCheat/main/main.lua', true))()
            ]]
            if shared.VapeCustomProfile then
                TeleportScript = ('shared.VapeCustomProfile = "' .. tostring(shared.VapeCustomProfile) .. '"\n') .. TeleportScript
            end
            vape:Save()
            queue_on_teleport(TeleportScript)
        end
    end))

    if not shared.vapereload then
        vape:CreateNotification("Finished Loading", (vape.VapeButton and "Press the button in the top right" or ("Press " .. table.concat(vape.GUIBind and vape.GUIBind.Keys or {"RightShift"}, " + "):upper())) .. " to open GUI", 5)
    end
end

if not isfile(prefix .. "gui.txt") then
    writefile(prefix .. "gui.txt", "new")
end
local Gui: string = "new"

vape, RunPremium = loadstring(DownloadFile(prefix .. "gui/" .. Gui .. ".lua"), "gui")({})
shared.vape = vape
shared.vapesmooth = false
_G.vape = vape
getgenv().used_init = true

if not shared.VapeIndependent then
    pcall(DownloadFile, prefix .. "games/universal.lua")
    if isfile(prefix .. "games/universal.lua") then
        loadstring(readfile(prefix .. "games/universal.lua"), "universal")({})
    end

    -- Bedwars GameId 기반 PlaceId 판별
    local gameFileId
    if game.GameId == 2619619496 then
        gameFileId = (game.PlaceId == 6872265039) and 6872265039 or 6872274481
    else
        gameFileId = game.PlaceId
    end

    local placeScript = prefix .. "games/" .. tostring(gameFileId) .. ".lua"
    pcall(DownloadFile, placeScript)
    if isfile(placeScript) then
        local src = readfile(placeScript)
        local chunk, err = loadstring(src, tostring(gameFileId))
        if not chunk then
            error("[Gyuvape] syntax error in " .. tostring(gameFileId) .. ".lua: " .. tostring(err))
        end
        chunk({})
    end

    FinishLoading()
else
    vape.Init = FinishLoading
    return vape
end
