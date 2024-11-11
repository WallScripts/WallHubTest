local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local Tab = Window:MakeTab({
	Name = "Testes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Função para obter a velocidade atual do personagem
local noclipEnabled = false

-- Função para ativar/desativar noclip
local function toggleNoclip(value)
    noclipEnabled = value  -- Ativa ou desativa o noclip com base no valor da toggle
    if noclipEnabled then
        print("Noclip ativado!")
    else
        print("Noclip desativado!")
    end
end

-- Adiciona a toggle para noclip
Tab:AddToggle({
    Name = "Noclip",
    Default = false,
    Callback = toggleNoclip
})

-- Função que desativa as colisões se o noclip estiver ativado
game:GetService("RunService").Stepped:Connect(function()
    if noclipEnabled then
        local character = game.Players.LocalPlayer.Character
        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)
