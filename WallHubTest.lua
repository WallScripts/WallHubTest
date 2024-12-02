local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local TestTab = Window:MakeTab({ Name = "Testes", Icon = "rbxassetid://4483345998", })
TestTab:AddToggle({ Name = "Noclip", Default = Defaut, Callback = function(value)
      Clip = not value  
      if Clip then            
      if Noclipping then
      Noclipping:Disconnect()
end
     for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
     if child:IsA("BasePart") then
     child.CanCollide = true
 end
end
 NotificationOff("Noclip")
else            
     Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)
 NotificationOn("Noclip") end end })

----------------------------------------------------------

--Acabou

OrionLib:Init()
