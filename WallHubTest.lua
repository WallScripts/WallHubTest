local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local TestTab = Window:MakeTab({ Name = "Testes", Icon = "rbxassetid://4483345998", })

local function Notification(ScriptName) 
      OrionLib:MakeNotification({ Name = "Wall Hub System", Content = "O " .. ScriptName .. " foi executado", Image = "rbxassetid://".. Id, Time = 5 })
end

TestTab:AddButton({
    Name = "Nome do Botão", Callback = function(); Notification("teste, 4483345998") end })

OrionLib:Init()
