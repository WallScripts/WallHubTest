local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/WallScripts/OrionLibraryV3/refs/heads/main/WallHub")))()
local Window = OrionLib:MakeWindow({IntroText = "Wall Hub(testes)", IntroIcon = "rbxassetid://8834748103",Name = ("Wall Hub(testes)".." | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, InEnabled = true, ConfigFolder = "Wall Hub"})

local infoTab = Window:MakeTab({
	Name = "Testes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Função para atualizar o dropdown com os nomes dos jogadores
local function UpdatePlayerList()
    local playerNames = {}  -- Tabela para armazenar os nomes dos jogadores
    for _, p in pairs(Players:GetPlayers()) do
        table.insert(playerNames, p.Name)  -- Adiciona o nome do jogador à tabela
    end

    -- Atualiza o dropdown com a lista de jogadores
    infoTab:UpdateDropdown({
        Name = "Jogadores",
        Options = playerNames,
        Callback = function(value)
            -- Aqui você pode usar a função de copiar quando um jogador for selecionado
            copyToClipboard(value)  -- Copia o nome do jogador selecionado
        end
    })
end

-- Cria a aba de "Informações Extra"
local infoTab = OrionLib:MakeTab({
    Name = "Informações Extra",
    Icon = "rbxassetid://7733911828",
    PremiumOnly = false
})

-- Exibe as informações do jogador e do jogo
infoTab:AddLabel("Nome do Player: " .. player.Name)
infoTab:AddLabel("ID do Player: " .. player.UserId)
infoTab:AddLabel("Nome do Game: " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
infoTab:AddLabel("ID do Game: " .. game.PlaceId)

-- Adiciona o botão para copiar o nome do jogador
infoTab:AddButton({
    Name = "Copiar Nome do Player",
    Callback = function()
        copyToClipboard(player.Name)
    end
})

-- Adiciona o botão para copiar o ID do jogador
infoTab:AddButton({
    Name = "Copiar ID do Player",
    Callback = function()
        copyToClipboard(tostring(player.UserId))
    end
})

-- Cria o dropdown de jogadores
infoTab:AddDropdown({
    Name = "Selecionar Jogador",
    Options = {},  -- Inicialmente vazio
    Callback = function(value)
        -- Copia o nome do jogador selecionado
        copyToClipboard(value)
    end
})

-- Atualiza a lista de jogadores no dropdown
UpdatePlayerList()

OrionLib:Init()
