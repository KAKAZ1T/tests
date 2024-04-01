
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
        local pos =
            UDim2.new(
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
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
            then
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


local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/notify_ui.lua"))()

function CreateSupportList(list_game)
	local function RainbowText(text)
		spawn(function()
			local add = 10
			wait(1)
			local k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(k/255,0/255,0/255)
				k = k + add
				wait()
			end
			while true do
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255,k/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(0/255,255/255,k/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(k/255,0/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
					k = k + add
					wait()
				end
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
					k = k + add
					wait()
				end
			end
		end)
	end
	
	local Anh_Gai_Alimi = {"rbxassetid://6942501524","rbxassetid://7903531742","rbxassetid://7903522083","rbxassetid://6409799523","rbxassetid://8881175113",
		"rbxassetid://7584008919","rbxassetid://6271530098","rbxassetid://7388383866","rbxassetid://7962732035","rbxassetid://6842416695","rbxassetid://6576447146",
		"rbxassetid://10171317457","rbxassetid://10171317457","rbxassetid://8598068647","rbxassetid://8192162908","rbxassetid://8677814109","rbxassetid://4597457883"
	}
	
	local SupportUi = Instance.new("ScreenGui")
	local BackImg = Instance.new("ImageLabel")
	local Black = Instance.new("Frame")
	local Tittle = Instance.new("TextLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CloseButton = Instance.new("TextButton")
	


	
	RainbowText(Tittle)
	RainbowText(CloseButton)

	for i,v in pairs(list_game) do
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Parent = ScrollingFrame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0, 353, 0, 24)
		TextLabel.Font = Enum.Font.Highway
		TextLabel.Text = " + " .. v
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextTransparency = 0.500
		TextLabel.TextWrapped = true
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		RainbowText(TextLabel)
	end
	
	CloseButton.MouseButton1Click:Connect(function()
		game.Debris:AddItem(SupportUi, 0)
	end)
end

local Drop = Instance.new("ScreenGui")
local Drop_2 = Instance.new("ImageLabel")
local Clound = Instance.new("ImageLabel")
local GG = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

Drop.Name = "Drop"
Drop.Parent = game.CoreGui
Drop.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Drop_2.Name = "Drop"
Drop_2.Parent = Drop
Drop_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop_2.BackgroundTransparency = 1.000
Drop_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop_2.Position = UDim2.new(0.241050124, 0, 0.562204719, 0)
Drop_2.Size = UDim2.new(0.0509148762, 0, 0.100787401, 0)
Drop_2.Visible = false
Drop_2.Image = "rbxassetid://4987600247"
Drop_2.ImageColor3 = Color3.fromRGB(0, 255, 255)

Clound.Name = "Clound"
Clound.Parent = Drop
Clound.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clound.BackgroundTransparency = 1.000
Clound.Position = UDim2.new(-0.0716600791, 0, -0.0929134041, 0)
Clound.Size = UDim2.new(1.07159901, 0, 0.278740168, 0)
Clound.Image = "rbxassetid://7574606641"
Clound.ImageColor3 = Color3.fromRGB(66, 66, 66)
Clound.ImageTransparency = 1
Clound.ZIndex = 2

GG.Name = "GG"
GG.Parent = Drop
GG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GG.BackgroundTransparency = 1.000
GG.Position = UDim2.new(0.174224347, 0, 0.236220479, 0)
GG.Size = UDim2.new(0.651551306, 0, 0.502362192, 0)
GG.ZIndex = 3
GG.Font = Enum.Font.LuckiestGuy
GG.Text = "Kakah Menu"
GG.TextColor3 = Color3.fromRGB(255, 255, 255)
GG.TextScaled = true
GG.TextSize = 100.000
GG.TextStrokeTransparency = 0.500
GG.TextTransparency = 1.000
GG.TextWrapped = true
GG.ZIndex = 3

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 170, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 255, 255))}
UIGradient.Rotation = 80
UIGradient.Parent = GG

function make_drop()
	local rl = tonumber("0."..math.random(0, 95))
	local top = tonumber(0)
	local last = tonumber(1.2)
	local rain = Drop_2:Clone()
	rain.Parent = Drop
	rain.Position = UDim2.new(rl,0,top,0)
	rain.Visible = true
	local speed = math.random(3,8)
	game:GetService("TweenService"):Create(rain, TweenInfo.new(speed), {Position = UDim2.new(rl,0,last,0)}):Play()
	game.Debris:AddItem(rain, speed)
end

game:GetService("TweenService"):Create(Clound, TweenInfo.new(1), {ImageTransparency = 0}):Play()
wait(1)
for i = 1, math.random(60,80) do
	make_drop()
	wait(0.1)
end
game:GetService("TweenService"):Create(Clound, TweenInfo.new(1), {ImageTransparency = 1}):Play()
game:GetService("TweenService"):Create(GG, TweenInfo.new(1), {TextTransparency = 0}):Play()
wait(2)
game:GetService("TweenService"):Create(GG, TweenInfo.new(1), {TextTransparency = 1}):Play()
wait(1)
local LoadUI = Instance.new("ScreenGui")
local SUCCESS = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local IN = Instance.new("Frame")
local LOAD = Instance.new("Frame")
local LOGO = Instance.new("TextLabel")
local Drop = Instance.new("ImageLabel")
local TOTEXT = Instance.new("TextLabel")

LoadUI.Name = "LoadUI"
LoadUI.Parent = game.CoreGui
LoadUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

SUCCESS.Name = "SUCCESS"
SUCCESS.Parent = LoadUI
SUCCESS.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
SUCCESS.Position = UDim2.new(0.344470978, 0, 0.349606305, 0)
SUCCESS.Size = UDim2.new(0.311058074, 0, 0.299212605, 0)

UICorner.Parent = SUCCESS

IN.Name = "IN"
IN.Parent = SUCCESS
IN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IN.BackgroundTransparency = 0.500
IN.BorderSizePixel = 0
IN.Position = UDim2.new(0, 0, 0.542105258, 0)
IN.Size = UDim2.new(1, 0, 0.147368416, 0)
IN.ZIndex = 2

LOAD.Name = "LOAD"
LOAD.Parent = SUCCESS
LOAD.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LOAD.BorderSizePixel = 0
LOAD.Position = UDim2.new(0, 0, 0.542105258, 0)
LOAD.Size = UDim2.new(0.0639386177, 0, 0.147368416, 0)
LOAD.ZIndex = 3

LOGO.Name = "LOGO"
LOGO.Parent = SUCCESS
LOGO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOGO.BackgroundTransparency = 1.000
LOGO.Position = UDim2.new(0.414322257, 0, 0.231578946, 0)
LOGO.Size = UDim2.new(0.299232751, 0, 0.263157904, 0)
LOGO.Font = Enum.Font.LuckiestGuy
LOGO.Text = "Kakah Menu"
LOGO.TextColor3 = Color3.fromRGB(255, 255, 255)
LOGO.TextScaled = true
LOGO.TextSize = 14.000
LOGO.TextWrapped = true

Drop.Name = "Drop"
Drop.Parent = SUCCESS
Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop.BackgroundTransparency = 1.000
Drop.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop.Position = UDim2.new(0.28187114, 0, 0.163157895, 0)
Drop.Size = UDim2.new(0.132856071, 0, 0.262992293, 0)
Drop.Image = "rbxassetid://4987600247"
Drop.ImageColor3 = Color3.fromRGB(0, 255, 255)

TOTEXT.Name = "TOTEXT"
TOTEXT.Parent = SUCCESS
TOTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.BackgroundTransparency = 1.000
TOTEXT.Position = UDim2.new(0.166240424, 0, 0.768421054, 0)
TOTEXT.Size = UDim2.new(0.667519152, 0, 0.157894731, 0)
TOTEXT.Font = Enum.Font.SourceSans
TOTEXT.Text = "Carregando"
TOTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.TextScaled = true
TOTEXT.TextSize = 14.000
TOTEXT.TextWrapped = true

--Properties:

Discord.Name = "Discord"
Discord.Parent = game.CoreGui
Discord.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DIS.Name = "DIS"
DIS.Parent = Discord
DIS.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
DIS.Position = UDim2.new(-1, 0, 0.66299212, 0)
--DIS.Position = UDim2.new(0.031026274, 0, 0.66299212, 0)
DIS.Size = UDim2.new(0.311058074, 0, 0.299212605, 0)

UICorner.Parent = DIS

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

Drop.Name = "Drop"
Drop.Parent = DIS
Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop.BackgroundTransparency = 1.000
Drop.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop.Position = UDim2.new(0.28187114, 0, 0.163157895, 0)
Drop.Size = UDim2.new(0.132856071, 0, 0.262992293, 0)
Drop.Image = "rbxassetid://4987600247"
Drop.ImageColor3 = Color3.fromRGB(0, 255, 255)

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

UICorner_2.Parent = CoppyDis

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

UICorner_3.Parent = Never
game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Position = UDim2.new(0.031026274, 0, 0.66299212, 0)}):Play()
wait(0.5)
local click = false
Never.MouseButton1Click:Connect(function()
	if click == false then
		click = true
		game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
		wait(0.5)
		Discord:Destroy()
    Drop:Destroy()
	end
end)
CoppyDis.MouseButton1Click:Connect(function()
	if click == false then
		click = true
    pcall(function()
		  setclipboard("https://kakahmenu.kakazitscripts.com/suporte/")
	  end)
		CoppyDis.Text = "Copied !!"
		wait(0.5)
		game:GetService("TweenService"):Create(DIS, TweenInfo.new(0.5), {Size = UDim2.new(0,0,0,0)}):Play()
		wait(0.5)
		Discord:Destroy()
    Drop:Destroy()
	end
end)
----------------------------------------------------------------------------------------------------------------------------------------
--[[local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = "http://www.roblox.com/asset/?id=15850924286"
ImageButton1.MouseButton1Down:connect(function()
  game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
  game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
UICorner.Parent = ImageButton1
UIStroke.Color = Color3.fromRGB(252, 3, 161)
UIStroke.Thickness = 1.5
UIStroke.Parent = ImageButton1]]
----------------------------------------------------------------------------------------------------------------------------------------
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KAKAZ1T/tests/main/Inicializador_Kakah_Menu_Legit.lua"))()
end
----------------------------------------------------------------------------------------------------------------------------------------
--[[else
    print("Player Closed The GUI.")
end]]