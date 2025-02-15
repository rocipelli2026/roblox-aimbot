-- Criação de uma GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local textLabel = Instance.new("TextLabel")
textLabel.Parent = frame
textLabel.Size = UDim2.new(1, 0, 0, 40)
textLabel.Text = "===== MENU ====="
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextSize = 24
textLabel.TextAlignment = Enum.TextAlignment.Center
textLabel.BackgroundTransparency = 1

local button1 = Instance.new("TextButton")
button1.Parent = frame
button1.Size = UDim2.new(1, 0, 0, 40)
button1.Position = UDim2.new(0, 0, 0.2, 0)
button1.Text = "Carregar Script"
button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

local button2 = Instance.new("TextButton")
button2.Parent = frame
button2.Size = UDim2.new(1, 0, 0, 40)
button2.Position = UDim2.new(0, 0, 0.6, 0)
button2.Text = "Sair"
button2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

-- Função para carregar e executar o script
local function carregarScript()
    print("Carregando e executando o script...")
    local url = "https://github.com/rocipelli2026/roblox-aimbot/raw/refs/heads/main/script.lua"
    local script = game:HttpGet(url)
    loadstring(script)()  -- Executa o código carregado
    print("Script carregado e executado com sucesso!")
end

-- Função para fechar a GUI
local function fecharGUI()
    screenGui:Destroy()
end

-- Conectar funções aos botões
button1.MouseButton1Click:Connect(carregarScript)  -- Botão para carregar o script
button2.MouseButton1Click:Connect(fecharGUI)  -- Botão para fechar a GUI
