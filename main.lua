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

local IsMadium: boolean = identifyexecutor ~= nil and ({identifyexecutor()})[1] == "Madium"

getgenv().matchDodgeActive = isfile("C:/Users/PC/Downloads/새 폴더 (2)/profiles/matchdodge.txt") and readfile("C:/Users/PC/Downloads/새 폴더 (2)/profiles/matchdodge.txt") == "true"
getgenv().regionLockActive = isfile("C:/Users/PC/Downloads/새 폴더 (2)/profiles/regionlock.txt") and readfile("C:/Users/PC/Downloads/새 폴더 (2)/profiles/regionlock.txt") == "true"
getgenv().regionLockAllowed = not getgenv().regionLockActive

if (getgenv().matchDodgeActive or getgenv().regionLockActive) and not getgenv().runv2 and hookmetamethod and not IsMadium then
    getgenv().runv2 = true
    getgenv().matchDodgeHold = {Held = true, Started = os.clock()}
    getgenv().matchDodgeHold.Release = function()
        if not getgenv().matchDodgeHold.Held then
            return
        end
        getgenv().matchDodgeHold.Held = false
        getgenv().dodged = false
        if getgenv().matchDodgeHold.Remote then
            getgenv().matchDodgeHold.Remote:FireServer()
            getgenv().matchDodgeHold.Remote = nil
        end
    end
    local Old
    Old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        if getgenv().matchDodgeHold.Held and not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "PlayerReady" then
            getgenv().matchDodgeHold.Remote = self
            getgenv().dodged = true
            return
        end
        return Old(self, ...)
    end))
    task.delay(45, function()
        if not getgenv().matchDodgeHold.Claimed then
            getgenv().matchDodgeHold.Release()
        end
    end)
end

local vape, RunPremium
local loadstring = function(...)
    local Chunk, Error = loadstring(...)
    if Error and vape then
        vape:CreateNotification("HSVape", `Failed to load : {Error}`, 30, "alert")
    end
    return Chunk
end

local queue_on_teleport = queue_on_teleport or function() end
local isfile = isfile or function(FilePath: string)
    local Success, Contents = pcall(function()
        return readfile(FilePath)
    end)
    return Success and Contents ~= nil and Contents ~= ""
end

local cloneref = cloneref or function(Reference: Instance)
    return Reference
end

local Players: Players = cloneref(game:GetService("Players"))
local HttpService: HttpService = cloneref(game:GetService("HttpService"))

if IsMadium and game.GameId == 2619619496 and not Players.LocalPlayer:GetAttribute("PlayerConnected") then
    local LogService: LogService = cloneref(game:GetService("LogService"))
    local SetupLine: string = "[SETUP] Set up Flamework Client"
    local SetupDone: boolean = false
    local SetupConnection = LogService.MessageOut:Connect(function(Message: string)
        if string.find(Message, SetupLine, 1, true) then
            SetupDone = true
        end
    end)

    for _, Entry: any in LogService:GetLogHistory() do
        if string.find(Entry.message, SetupLine, 1, true) then
            SetupDone = true
            break
        end
    end

    local WaitStarted: number = os.clock()
    repeat
        task.wait(0.25)
    until SetupDone or os.clock() - WaitStarted > 20
    SetupConnection:Disconnect()
end

local function LoadLocalFile(FilePath: string, Reader)
    if isfile(FilePath) then
        local Content = readfile(FilePath)
        return (Reader or readfile)(FilePath)
    end
    error(`File not found: {FilePath}`)
end

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
				loadstring(readfile('C:/Users/PC/Downloads/새 폴더 (2)/main.lua'), 'main')()
			]]
            if shared.VapeCustomProfile then
                TeleportScript = `shared.VapeCustomProfile = "{shared.VapeCustomProfile}"
{TeleportScript}`
            end
            vape:Save()
            queue_on_teleport(TeleportScript)
        end
    end))

    if not shared.vapereload then
        vape:CreateNotification("Finished Loading", (vape.VapeButton and "Press the button in the top right" or `Press {table.concat(vape.GUIBind and vape.GUIBind.Keys or {"RightShift"}, " + "):upper()}`) .. " to open GUI", 5)
    end
end

if not isfile("C:/Users/PC/Downloads/새 폴더 (2)/profiles/gui.txt") then
    writefile("C:/Users/PC/Downloads/새 폴더 (2)/profiles/gui.txt", "new")
end
local Gui: string = "new"

if not isfolder(`C:/Users/PC/Downloads/새 폴더 (2)/assets/{Gui}`) then
    makefolder(`C:/Users/PC/Downloads/새 폴더 (2)/assets/{Gui}`)
end

vape, RunPremium = loadstring(LoadLocalFile(`C:/Users/PC/Downloads/새 폴더 (2)/gui/{Gui}.lua`), "gui")({})
shared.vape = vape
shared.vapesmooth = false
_G.vape = vape
getgenv().used_init = true

if hookmetamethod and not getgenv().run and not IsMadium then
    getgenv().run = true
    local Old
    Old = hookmetamethod(game, "__namecall", newcclosure(function(self, Remote, ...)
        if not checkcaller() and getnamecallmethod() == "FireServer" then
            if typeof(Remote) == "Instance" and Remote.Name == "TabFreezeAnticheat_ClientToServerReport" then
                return
            end
        end
        return Old(self, Remote, ...)
    end))
end

if not shared.VapeIndependent then
    if isfile("C:/Users/PC/Downloads/새 폴더 (2)/games/universal.lua") then
        loadstring(readfile("C:/Users/PC/Downloads/새 폴더 (2)/games/universal.lua"), "universal")({})
    end
    if isfile(`C:/Users/PC/Downloads/새 폴더 (2)/games/{game.PlaceId}.lua`) then
        loadstring(readfile(`C:/Users/PC/Downloads/새 폴더 (2)/games/{game.PlaceId}.lua`), tostring(game.PlaceId))({})
    end
    if isfile("C:/Users/PC/Downloads/새 폴더 (2)/libraries/main.lua") then
        loadstring(readfile("C:/Users/PC/Downloads/새 폴더 (2)/libraries/main.lua"), "main")({})
    end
    FinishLoading()
else
    vape.Init = FinishLoading
    return vape
end
