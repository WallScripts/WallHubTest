local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local Tab = Window:MakeTab({
	Name = "Testes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Função para obter a velocidade atual do personagem
local function GetCurrentSpeed()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        return character.Humanoid.WalkSpeed  -- Retorna a velocidade do personagem
    else
        return 16  -- Valor padrão (caso não tenha um humanoide encontrado)
    end
end

-- Função para definir a velocidade do personagem
local function SetSpeed(speed)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = speed  -- Define a velocidade
    end
end

-- Adicionando o Dropdown de Velocidade
Tab:AddDropdown({
    Name = "Escolha a Velocidade",
    Default = tostring(GetCurrentSpeed()),  -- Define a velocidade atual do personagem no dropdown
    Options = {"16", "32", "50", "100", "200"},  -- Opções de velocidade (você pode adicionar mais se desejar)
    Callback = function(Value)
        local speed = tonumber(Value)  -- Converte o valor para número
        if speed then
            SetSpeed(speed)  -- Aplica a nova velocidade
        end
    end    
})

-- Botão para resetar a velocidade para a velocidade padrão do jogo
Tab:AddButton({
    Name = "Resetar Velocidade",
    Callback = function()
        SetSpeed(16)  -- Reseta a velocidade para 16 (velocidade padrão do Roblox)
    end
})
