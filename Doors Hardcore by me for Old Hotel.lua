-- (ONLY WORKS ON HOTEL-) Hardcore Mode V3 by Man9743 (HeitorGamer9743) Credits to Noonie and Ping for the original mode (Ping for the Models) and i made this mode completelly lonely :( (THIS MODE IS NOT THE ORIGINAL) Thanks to read and enjoy :D

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
loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/Sprint"))()


-- Change Seek Eye Texture
for i,v in pairs(game.ReplicatedStorage.Misc.Eyes:GetDescendants()) do
	if v.Name == "Eye" then
		v:FindFirstChild("Part").Decal.Texture = "rbxassetid://1882220622"
		v:FindFirstChild("Eye").Name = "KYS"
	end
end

-- Change Seek Model
print("i don't found the script, sorry")

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

	local NewFigure = GetGitSoundID("https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Sounds/blob/main/customObject_Sound_NewFigure.mp3raw=true","NewFigure")
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

wait(15)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(20)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(25)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Cease"))() 

wait(30)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(15)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(10)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(25)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/LP06GgPB"))() 

wait(10)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/sLtjEQjb"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(15)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))()  

wait(45)
loadstring(game:HttpGet("https://pastebin.com/raw/ESt3faS3"))() 

wait(10)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(30)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Cease"))() 

wait(20)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(35)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Silence%20HC"))() 

wait(15)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))()  

wait(45)
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
loadstring(game:HttpGet("https://pastebin.com/raw/xwEPyzyU"))() 

wait(30)
loadstring(game:HttpGet("https://raw.githubusercontent.com/fernandesdasilvamariainez-coder/Doors-Enitity-Spawner-Hotel--/refs/heads/main/Shocker"))() 

wait(60)
loadstring(game:HttpGet("https://pastebin.com/raw/hcMxjKGF"))()


    task.wait(1)  -- Looping freaking entities
end
-- Thanks to playing this mode
