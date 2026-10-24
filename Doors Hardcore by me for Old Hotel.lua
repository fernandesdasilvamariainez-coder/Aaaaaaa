-- (ONLY WORKS ON HOTEL-) Hardcore Mode V4 by Man9743 (HeitorGamer9743) Credits to Noonie and Ping for the original mode (Ping for the Models) and i made this mode completelly alone :( (THIS MODE IS NOT THE ORIGINAL) Thanks to read and enjoy :D

-- Warn: Cease is broken, so when it spawn, stop walking or running and wait 7 seconds to continue walking or running

-- Death message for some monsters
function DEATHMESSAGE(message,who)
	spawn(function()
		for i = 1,50 do wait()
			game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = who
			firesignal(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent, message,'Blue')
		end
	end)
end

-- New Guiding Light Music (Credits to lucastherealboy for the Guiding Light music)
local function GetGitSoundID(GithubSnd,SoundName)
	SoundName=tostring(SoundName)
	local url=GithubSnd
	SoundName=tostring(SoundName)
	local url=GithubSnd
	FileName = SoundName
	writefile("customObject_Sound_"..FileName..".mp3", game:HttpGet(url))
	return (getcustomasset or getsynasset)("customObject_Sound_"..FileName..".mp3")
end    
	local NewBlue = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/Blue.mp3?raw=true","Blue")
	local OldBlue = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.Music
	OldBlue.SoundId=NewBlue
	OldBlue.Volume = 7
	local EndBlue = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/Blue.mp3?raw=true","Blue")
	local FahBlue = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.MusicEnd
	FahBlue.SoundId=EndBlue
	FahBlue.Volume = 7


-- Stamina
-- Create the ScreenGui and Sprint Bar
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

local sprintBarBackground = Instance.new("Frame")
sprintBarBackground.Size = UDim2.new(0.5, 0, 0.05, 0)  -- Half of the screen width, small height
sprintBarBackground.Position = UDim2.new(0.25, 0, 0, 0)  -- Centered at top
sprintBarBackground.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sprintBarBackground.Parent = screenGui

local sprintBar = Instance.new("Frame")
sprintBar.Size = UDim2.new(0, 0, 1, 0)  -- Width is dynamic, height fills the background
sprintBar.BackgroundColor3 = Color3.fromRGB(150, 0, 0)  -- Green for the sprint bar
sprintBar.Parent = sprintBarBackground

-- Sprint and Stamina Variables
local sprinting = false
local maxStamina = 150  -- Maximum stamina
local currentStamina = maxStamina  -- Starting stamina
local staminaRegenRate = 15  -- How fast stamina regenerates per second
local staminaDrainRate = 20  -- How fast stamina drains while sprinting
local sprintSpeed = 20     -- Sprinting speed
local walkSpeed = 15       -- Walking speed

-- Function to update the sprint bar
local function updateSprintBar()

    sprintBar.Size = UDim2.new(currentStamina / maxStamina, 0, 1, 0)
end

-- Mobile Button for Sprinting
local sprintButton = Instance.new("TextButton")
sprintButton.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Size of the button
sprintButton.Position = UDim2.new(0.8, 0, 0.9, 0)  -- Position at bottom-right corner
sprintButton.Text = "Sprint"
sprintButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Green button
sprintButton.Parent = screenGui

-- Toggle Sprint on Button Tap
sprintButton.MouseButton1Click:Connect(function()
    sprinting = not sprinting  -- Toggle sprinting state
    if sprinting and game.Players.LocalPlayer.Character.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0) then
        -- Change walk speed to sprint speed
        player.Character.Humanoid.WalkSpeed = sprintSpeed
    else
        -- Revert to walking speed
        player.Character.Humanoid.WalkSpeed = walkSpeed
    end
end)

-- Function to handle sprinting logic with Heartbeat to avoid infinite loop
local runService = game:GetService("RunService")

runService.Heartbeat:Connect(function()
    if sprinting then
        -- Drain stamina while sprinting
        if currentStamina > 0 then
            currentStamina = currentStamina - staminaDrainRate * runService.Heartbeat:Wait() -- Wait time per frame
        else
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("You're Exhausted", true)
            sprinting = false  -- Stop sprinting if no stamina
            player.Character.Humanoid.WalkSpeed = walkSpeed -- Revert speed
        end
    else
        -- Regenerate stamina while not sprinting
        if currentStamina < maxStamina then
            currentStamina = currentStamina + staminaRegenRate * runService.Heartbeat:Wait() -- Wait time per frame
        end
    end

    -- Keep stamina within bounds
    currentStamina = math.clamp(currentStamina, 0, maxStamina)
    updateSprintBar()
end)


-- Change Seek Eye Texture
for i,v in pairs(game.ReplicatedStorage.Misc.Eyes:GetDescendants()) do
	if v.Name == "Eye" then
		v:FindFirstChild("Part").Decal.Texture = "rbxassetid://1882220622"
		v:FindFirstChild("Eye").Name = "KYS"
	end
end

-- Change Seek Model
print("i dont found the script, sorry")

-- Change Seek and Figure Music
local function GetGitSoundID(GithubSnd,SoundName)
	SoundName=tostring(SoundName)
	local url=GithubSnd
	SoundName=tostring(SoundName)
	local url=GithubSnd
	FileName = SoundName
	writefile("customObject_Sound_"..FileName..".mp3", game:HttpGet(url))
	return (getcustomasset or getsynasset)("customObject_Sound_"..FileName..".mp3")
end    
	local NewSeek = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/customObject_Sound_NewSeek.mp3?raw=true","NewSeek")
	local OldSeek = workspace.Ambience_Seek
	OldSeek.SoundId=NewSeek
	OldSeek.Volume = 2.2

	local NewFigure = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/customObject_Sound_NewFigure.mp3?raw=true","NewFigure")
	local OldFigure = workspace.Ambience_Figure
	OldFigure.SoundId=NewFigure
	local NewFigureStart = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/customObject_Sound_NewFigureStart.mp3?raw=true","NewFigureStart")
	local OldFigureStart = workspace.Ambience_FigureStart
	OldFigureStart.SoundId=NewFigureStart
	local NewFigureEnd = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/customObject_Sound_NewFigureEnd.mp3?raw=true","NewFigureEnd")
	local OldFigureEnd = workspace.Ambience_FigureEnd
	OldFigureEnd.SoundId=NewFigureEnd


-- THIS MODE IS NOT OFFICIAL, IS JUST A RECREATION

-- Entities

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Hardcore by Heitor",true)
wait(2) require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Credits to Noonie and Ping for the Original mode",true)
while true do
wait(20)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(13)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(20)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(20)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Cease"))() 

wait(25)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(15)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(10)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(25)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/LP06GgPB"))() 

wait(8)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/sLtjEQjb"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(12)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))()  

wait(38)
loadstring(game:HttpGet("https://pastebin.com/raw/ESt3faS3"))() 

wait(10)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(25)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Cease"))() 

wait(20)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(35)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
wait(4)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Silence%20HC"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))()  

wait(35)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(30)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(60)
loadstring(game:HttpGet("https://pastebin.com/raw/hcMxjKGF"))()


    task.wait(1)  -- Looping new entities cool
end
