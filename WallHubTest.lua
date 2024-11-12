local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local infoTab = Window:MakeTab({
	Name = "Testes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local SpeedSlider = Tab:AddSlider({
    Name = "WalkSpeed",
    Min = 0,
    Max = 400,
    Default = 16,
    Color = Color3.fromRGB(0, 255, 0),
    Increment = 1,
    ValueName = "",
    Callback = function(value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = value        
    end    
})

Tab:AddButton({
	Name = "Resetar Velocidade",
	Callback = function()SpeedSlider:Set(16)
      		print("Velocidade resetada")
  	end    
})

OrionLib:Init()
