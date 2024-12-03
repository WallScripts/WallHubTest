local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local TestTab = Window:MakeTab({ Name = "Testes", Icon = "rbxassetid://4483345998", })

local function NotificationP(Conteudo, Id, Time) 
      Conteudo = Conteudo or "Oque essa notificação vai dizer?"
	Id = Id or 7733911828
	Time = Time or 5
	OrionLib:MakeNotification({ Name = "Wall Hub System", Content = Conteudo, Image = "rbxassetid://" .. Id, Time = Time })
end

TestTab:AddButton({
    Name = "Nome do Botão", Callback = function(); Notification("", "", "") end })

OrionLib:Init()
