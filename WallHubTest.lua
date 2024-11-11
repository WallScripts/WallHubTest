local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local Tab = Window:MakeTab({
	Name = "Testes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Variável de controle
local noclipEnabled = false

-- Função para ativar ou desativar o noclip
local function toggleNoclip(value)
    noclipEnabled = value
    if noclipEnabled then
        -- Ativa o noclip, removendo colisões
        game:GetService("RunService").Stepped:Connect(function()
            if noclipEnabled and game.Players.LocalPlayer.Character then
                for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide == true then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        -- Desativa o noclip, restaurando colisões
        for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
end

-- Toggle da Orion Library
Tab:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = function(value)
        toggleNoclip(value)
    end
})
