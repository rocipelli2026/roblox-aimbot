-- Função para exibir o menu
function exibirMenu()
    print("====== MENU ======")
    print("1. Carregar script do Aimbot")
    print("2. Sair")
    print("==================")
end

-- Função para processar a escolha do usuário
function processarEscolha(escolha)
    if escolha == "1" then
        print("Carregando script...")
        local url = "https://github.com/rocipelli2026/roblox-aimbot/raw/refs/heads/main/script.lua"
        local script = game:HttpGet(url)
        loadstring(script)()  -- Executa o script do link
        print("Script carregado e executado!")
    elseif escolha == "2" then
        print("Saindo do programa...")
        os.exit() -- Encerra o programa
    else
        print("Opção inválida! Tente novamente.")
    end
end

-- Loop principal do menu
while true do
    exibirMenu()
    io.write("Escolha uma opção: ")
    escolha = io.read() -- Lê a entrada do usuário
    processarEscolha(escolha)
end
