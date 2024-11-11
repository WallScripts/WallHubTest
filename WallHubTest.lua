local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local Tab = Window:MakeTab({
	Name = "Testes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Variável de controle
local Clip = true  -- Variável de controle para noclip
local Noclipping  -- Variável para armazenar a conexão do evento RunService.Stepped

-- Função que executa o loop de noclip
local function NoclipLoop()
    if not Clip and game.Players.LocalPlayer.Character then
        for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end

-- Toggle da Orion Library para ativar/desativar o noclip
Tab:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(value)
        Clip = not value  -- Alterna a variável Clip com base na toggle
        if Clip then
            -- Desativa o noclip e desconecta o evento
            if Noclipping then
                Noclipping:Disconnect()
            end
            for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if child:IsA("BasePart") then
                    child.CanCollide = true
                end
            end
        else
            -- Ativa o noclip e conecta o evento
            Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)
        end
    end
})
