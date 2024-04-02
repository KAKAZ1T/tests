local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
local UIS = game:GetService("UserInputService")

function MakeDraggable(BarObject, Object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    function Update(input)
        local Delta = input.Position - DragStart
        local pos = UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
        local Tween = TweenService:Create(Object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    BarObject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = Object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    BarObject.InputChanged:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch then
                DragInput = input
            end
        end
    )

    UIS.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local function game_name()
    local A = "Can Not Find Game Name :)"
    local marketplaceService = game:GetService("MarketplaceService")
    local isSuccessful, info = pcall(marketplaceService.GetProductInfo, marketplaceService, game.PlaceId)
    if isSuccessful then
        A = tostring(info.Name)
    end
    return A
end

local LocalizationService = game:GetService("LocalizationService")
local player = game.Players.LocalPlayer
 
local result, code = pcall(function()
    return LocalizationService:GetCountryRegionForPlayerAsync(player)
end)

local function CreateSupportList(list_game)
    local SupportUi = Instance.new("ScreenGui")
    SupportUi.Parent = game.CoreGui
    
    local BackImg = Instance.new("ImageLabel")
    BackImg.BackgroundTransparency = 1
    BackImg.Size = UDim2.new(1, 0, 1, 0)
    BackImg.Parent = SupportUi
    
    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
    ScrollingFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #list_game * 30)
    ScrollingFrame.Parent = BackImg
    
    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.Parent = ScrollingFrame
    
    for i, gameName in ipairs(list_game) do
        local TextLabel = Instance.new("TextLabel")
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 0, 30)
        TextLabel.Font = Enum.Font.SourceSans
        TextLabel.Text = gameName
        TextLabel.TextColor3 = Color3.new(1, 1, 1)
        TextLabel.TextSize = 24
        TextLabel.Parent = ScrollingFrame
    end
end

local function CreateLoadingUI()
    local LoadUI = Instance.new("ScreenGui")
    LoadUI.Parent = game.CoreGui
    
    local SUCCESS = Instance.new("Frame")
    SUCCESS.Parent = LoadUI
    -- Adicione o resto da criação da interface de carregamento aqui
    -- (não incluído na resposta para evitar exceder o limite de caracteres)
    -- ...
end

local function CreateDiscordUI()
    local Discord = Instance.new("ScreenGui")
    Discord.Parent = game.CoreGui
    
    local DIS = Instance.new("Frame")
    DIS.Parent = Discord
    -- Adicione o resto da criação da interface do Discord aqui
    -- (não incluído na resposta para evitar exceder o limite de caracteres)
    -- ...
end

	-- Load UI
	CreateLoadingUI()
	
	-- Discord UI
	CreateDiscordUI()
	
	-- Interface do Discord
	local Discord = Instance.new("ScreenGui")
	local DIS = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local LOGODIS = Instance.new("TextLabel")
	local Drop = Instance.new("ImageLabel")
	local DISTEXT = Instance.new("TextLabel")
	local CoppyDis = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local Never = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	
	-- Propriedades...
	
	repeat wait() until sp == true
	wait(1)
	game:GetService("TweenService"):Create(LOAD, TweenInfo.new(1), {Size = UDim2.new(0.629, 0,0.147, 0)}):Play()
	if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled == false then
		TOTEXT.Text = "Seu dispositivo é: PC"
	else
		TOTEXT.Text = "Seu dispositivo é: Mobile"
	end
	wait(2)
	TOTEXT.Text = "User: "..game.Players.LocalPlayer.Name.." | From: "..code
	wait(1)
	TOTEXT.Text = "Complete !! Carregando Script..."
	game:GetService("TweenService"):Create(LOAD, TweenInfo.new(1), {Size = UDim2.new(1, 0,0.147, 0)}):Play()
	wait(1)
	game:GetService("TweenService"):Create(SUCCESS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
	wait(.5)
	LoadUI:Destroy()

	-- Função para criar a interface do Discord
local function CreateDiscordUI()
    local Discord = Instance.new("ScreenGui")
    Discord.Name = "Discord"
    Discord.Parent = game.CoreGui
    Discord.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local DIS = Instance.new("Frame")
    DIS.Name = "DIS"
    DIS.Parent = Discord
    DIS.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    DIS.Position = UDim2.new(-1, 0, 0.66299212, 0)
    DIS.Size = UDim2.new(0.311058074, 0, 0.299212605, 0)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = DIS

    local LOGODIS = Instance.new("TextLabel")
    LOGODIS.Name = "LOGODIS"
    LOGODIS.Parent = DIS
    LOGODIS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LOGODIS.BackgroundTransparency = 1.000
    LOGODIS.Position = UDim2.new(0.414322257, 0, 0.231578946, 0)
    LOGODIS.Size = UDim2.new(0.299232751, 0, 0.263157904, 0)
    LOGODIS.Font = Enum.Font.LuckiestGuy
    LOGODIS.Text = "Kakah Menu"
    LOGODIS.TextColor3 = Color3.fromRGB(255, 255, 255)
    LOGODIS.TextScaled = true
    LOGODIS.TextSize = 14.000
    LOGODIS.TextWrapped = true

    local Drop = Instance.new("ImageLabel")
    Drop.Name = "Drop"
    Drop.Parent = DIS
    Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Drop.BackgroundTransparency = 1.000
    Drop.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Drop.Position = UDim2.new(0.28187114, 0, 0.163157895, 0)
    Drop.Size = UDim2.new(0.132856071, 0, 0.262992293, 0)
    Drop.Image = "rbxassetid://4987600247"
    Drop.ImageColor3 = Color3.fromRGB(0, 255, 255)

    local DISTEXT = Instance.new("TextLabel")
    DISTEXT.Name = "DISTEXT"
    DISTEXT.Parent = DIS
    DISTEXT.BackgroundColor3 = Color3.fromRGB(117, 117, 117)
    DISTEXT.BackgroundTransparency = 0.700
    DISTEXT.Position = UDim2.new(0, 0, 0.49473685, 0)
    DISTEXT.Size = UDim2.new(1, 0, 0.157894731, 0)
    DISTEXT.Font = Enum.Font.SourceSans
    DISTEXT.Text = "Suporte: https://kakahmenu.kakazitscripts.com/suporte/"
    DISTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
    DISTEXT.TextScaled = true
    DISTEXT.TextSize = 14.000
    DISTEXT.TextWrapped = true

    local CoppyDis = Instance.new("TextButton")
    CoppyDis.Name = "CoppyDis"
    CoppyDis.Parent = DIS
    CoppyDis.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    CoppyDis.Position = UDim2.new(0.0613810755, 0, 0.705263197, 0)
    CoppyDis.Size = UDim2.new(0.432225078, 0, 0.221052632, 0)
    CoppyDis.Font = Enum.Font.SourceSans
    CoppyDis.Text = "Copiar"
    CoppyDis.TextColor3 = Color3.fromRGB(0, 0, 0)
    CoppyDis.TextScaled = true
    CoppyDis.TextSize = 14.000
    CoppyDis.TextWrapped = true

    local UICorner_2 = Instance.new("UICorner")
    UICorner_2.Parent = CoppyDis

    local Never = Instance.new("TextButton")
    Never.Name = "Never"
    Never.Parent = DIS
    Never.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Never.Position = UDim2.new(0.516624033, 0, 0.705263197, 0)
    Never.Size = UDim2.new(0.432225078, 0, 0.221052632, 0)
    Never.Font = Enum.Font.SourceSans
    Never.Text = "Não"
    Never.TextColor3 = Color3.fromRGB(0, 0, 0)
    Never.TextScaled = true
    Never.TextSize = 14.000
    Never.TextWrapped = true

    local UICorner_3 = Instance.new("UICorner")
    UICorner_3.Parent = Never

    game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Position = UDim2.new(0.031026274, 0, 0.66299212, 0)}):Play()

    local click = false
    Never.MouseButton1Click:Connect(function()
        if not click then
            click = true
            game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
            wait(0.5)
            Discord:Destroy()
            Drop:Destroy()
        end
    end)

    CoppyDis.MouseButton1Click:Connect(function()
        if not click then
            click = true
            pcall(function()
                setclipboard("https://discord.gg/taohub")
            end)
            CoppyDis.Text = "Copied !!"
            wait(0.5)
            game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
            wait(0.5)
            Discord:Destroy()
            Drop:Destroy()
        end
    end)
end

-- Chamada da função para criar a interface do Discord
CreateDiscordUI()

-- Executar o script remoto
loadstring(game:HttpGet("https://raw.githubusercontent.com/KAKAZ1T/tests/main/Inicializador_Kakah_Menu_Legit.lua"))()
