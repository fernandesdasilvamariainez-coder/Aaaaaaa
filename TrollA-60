wait(0.1)
local function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end	
    local JumpscareSound = GetGitSound("https://github.com/fernandesdasilvamariainez-coder/Repository/blob/main/A-60TrollSoundNotLoop.mp3?raw=true","A-60TrollSoundNotLoop") JumpscareSound.Parent = workspace
			JumpscareSound.Volume = 0
			JumpscareSound:Play() 

wait(0.1)
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/Utilities-by-Vynixius/refs/heads/main/Doors%20Entity%20Spawner/Source.lua"))() 
-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "https://github.com/fernandesdasilvamariainez-coder/Roblox-Doors-Custom-Entities/blob/main/A-60TrollModelNotLoop.txt?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 1, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Enabled/Disabled
        1.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {1.5, 10, 0.1, 1}, -- Shake values (don't change if you don't know)
        90, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 2,
                Max = 4,
            },
        },
    },
    CustomDialog = {"You died to A-60.", "This entity is unknown.", "It has a unique sound; if you hear it, hide!"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    workspace.Ambience_Rush.Playing = true
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
