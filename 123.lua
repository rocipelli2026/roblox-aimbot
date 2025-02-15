-- Criação de uma GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.Active = true
frame.Draggable = true  -- Permite arrastar a GUI

-- Título do menu
local textLabel = Instance.new("TextLabel")
textLabel.Parent = frame
textLabel.Size = UDim2.new(1, 0, 0, 40)
textLabel.Text = "===== MENU ====="
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextSize = 24
textLabel.TextAlignment = Enum.TextAlignment.Center
textLabel.BackgroundTransparency = 1

-- Botão "Carregar Script"
local button1 = Instance.new("TextButton")
button1.Parent = frame
button1.Size = UDim2.new(1, 0, 0, 40)
button1.Position = UDim2.new(0, 0, 0.2, 0)
button1.Text = "Carregar Script"
button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

-- Botão "Minimizar"
local minimizeButton = Instance.new("TextButton")
minimizeButton.Parent = frame
minimizeButton.Size = UDim2.new(0.2, 0, 0.2, 0)
minimizeButton.Position = UDim2.new(0.8, 0, 0, 0)
minimizeButton.Text = "_"
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0)

-- Botão "Fechar"
local closeButton = Instance.new("TextButton")
closeButton.Parent = frame
closeButton.Size = UDim2.new(0.2, 0, 0.2, 0)
closeButton.Position = UDim2.new(0.8, 0, 0.2, 0)
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

-- Função para carregar e executar o script
local function carregarScript()
    print("Carregando e executando o script...")
    local url = "https://github.com/rocipelli2026/roblox-aimbot/raw/refs/heads/main/script.lua"
    local script = game:HttpGet(url)
    loadstring(script)()  -- Executa o código carregado
    print("Script carregado e executado com sucesso!")
end

-- Função para minimizar a GUI
local function minimizarGUI()
    frame.Size = UDim2.new(0, 300, 0, 40)  -- Minimiza o menu
    textLabel.Visible = false  -- Esconde o título
    button1.Visible = false  -- Esconde o botão de "Carregar Script"
    minimizeButton.Visible = false  -- Esconde o botão de minimizar
    closeButton.Text = "X"  -- Mantém o botão de fechar
end

-- Função para restaurar o menu
local function restaurarGUI()
    frame.Size = UDim2.new(0, 300, 0, 200)  -- Restaura o tamanho
    textLabel.Visible = true  -- Exibe o título
    button1.Visible = true  -- Exibe o botão de "Carregar Script"
    minimizeButton.Visible = true  -- Exibe o botão de minimizar
    closeButton.Text = "X"  -- Exibe o botão de fechar
end

-- Função para fechar a GUI
local function fecharGUI()
    screenGui:Destroy()  -- Destrói a GUI
end

-- Conectar funções aos botões
button1.MouseButton1Click:Connect(carregarScript)  -- Botão para carregar o script
minimizeButton.MouseButton1Click:Connect(minimizarGUI)  -- Botão para minimizar
closeButton.MouseButton1Click:Connect(fecharGUI)  -- Botão para fechar

-- Quando o botão de minimizar for clicado, alterna entre minimizar e restaurar
minimizeButton.MouseButton1Click:Connect(function()
    if frame.Size == UDim2.new(0, 300, 0, 40) then
        restaurarGUI()
    else
        minimizarGUI()
    end
end)
