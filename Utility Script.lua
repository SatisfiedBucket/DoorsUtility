-- Doors Utility
-- Helping doors players that suck since 2022
-- Credits to GUI to Lua to for making this 20 times easier

-- Detects Screech Spawning, Rush, Ambush, and more
-- This script is open source, and you can view it on Github! Have fun

-- Instances:

local DoorsUtility = Instance.new("ScreenGui")
local DoorNumber = Instance.new("TextLabel")
local Indicator = Instance.new("TextLabel")
local DoorOpened = Instance.new("ImageLabel")
local Revive = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local EntityWarning = Instance.new("TextLabel")

--Properties:

DoorsUtility.Name = "DoorsUtility"
DoorsUtility.Parent = game.Players.LocalPlayer.PlayerGui
DoorsUtility.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DoorNumber.Name = "DoorNumber"
DoorNumber.Parent = DoorsUtility
DoorNumber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DoorNumber.BackgroundTransparency = 1.000
DoorNumber.Position = UDim2.new(0.44302848, 0, 0.0371959955, 0)
DoorNumber.Size = UDim2.new(0.113043502, 0, 0.138340503, 0)
DoorNumber.Font = Enum.Font.Oswald
DoorNumber.Text = "0/0"
DoorNumber.TextColor3 = Color3.fromRGB(255, 201, 179)
DoorNumber.TextScaled = true
DoorNumber.TextSize = 14.000
DoorNumber.TextWrapped = true

Indicator.Name = "Indicator"
Indicator.Parent = DoorNumber
Indicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Indicator.BackgroundTransparency = 1.000
Indicator.Position = UDim2.new(-0.165782452, 0, 0.713546991, 0)
Indicator.Size = UDim2.new(1.32015777, 0, 0.286142707, 0)
Indicator.Font = Enum.Font.Oswald
Indicator.Text = "Doors"
Indicator.TextColor3 = Color3.fromRGB(255, 201, 179)
Indicator.TextScaled = true
Indicator.TextSize = 14.000
Indicator.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Indicator.TextWrapped = true

DoorOpened.Name = "DoorOpened"
DoorOpened.Parent = DoorNumber
DoorOpened.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DoorOpened.BackgroundTransparency = 1.000
DoorOpened.Position = UDim2.new(-0.338196218, 0, -0.692864418, 0)
DoorOpened.Size = UDim2.new(1.65225303, 0, 2.57848978, 0)
DoorOpened.Image = "http://www.roblox.com/asset/?id=10822615828"
DoorOpened.ImageColor3 = Color3.fromRGB(36, 255, 2)
DoorOpened.ImageTransparency = 1.000

Revive.Name = "Revive"
Revive.Parent = DoorsUtility
Revive.BackgroundColor3 = Color3.fromRGB(4, 255, 0)
Revive.Position = UDim2.new(0.696401775, 0, 0.423462033, 0)
Revive.Size = UDim2.new(0.297151506, 0, 0.0756795481, 0)
Revive.Font = Enum.Font.Oswald
Revive.Text = "Revive"
Revive.TextColor3 = Color3.fromRGB(255, 255, 255)
Revive.TextScaled = true
Revive.TextSize = 14.000
Revive.TextWrapped = true

TextLabel.Parent = Revive
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.99999994, 0)
TextLabel.Size = UDim2.new(1, 0, 2.01999998, 0)
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "What this does is revive the player even if they have already used a revive. This will not grant free revives."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner.Parent = Revive

TextLabel_2.Parent = Revive
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-1.54129182e-07, 0, 2.4599998, 0)
TextLabel_2.Size = UDim2.new(1.00000036, 0, 2.01999998, 0)
TextLabel_2.Font = Enum.Font.Oswald
TextLabel_2.Text = "If you don't already have a revive, the game will prompt you to purchase one. There isn't a way to get around this with exploits."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 24.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

EntityWarning.Name = "EntityWarning"
EntityWarning.Parent = DoorsUtility
EntityWarning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EntityWarning.BackgroundTransparency = 1.000
EntityWarning.Position = UDim2.new(0.306596726, 0, 0.731044352, 0)
EntityWarning.Size = UDim2.new(0.38605693, 0, 0.0542203337, 0)
EntityWarning.Font = Enum.Font.Oswald
EntityWarning.Text = "Sample Text"
EntityWarning.TextColor3 = Color3.fromRGB(255, 201, 179)
EntityWarning.TextScaled = true
EntityWarning.TextSize = 14.000
EntityWarning.TextTransparency = 1.000
EntityWarning.TextWrapped = true

-- Scripts:

local function LMIFJPT_fake_script() -- DoorOpened.LocalScript 
	local script = Instance.new('LocalScript', DoorOpened)

	local Door = game.ReplicatedStorage.GameData.LatestRoom
	
	script.Parent.ImageTransparency = 1
	
	Door.Changed:Connect(function()
		script.Parent.ImageTransparency = 0
		wait(0)
		script.Parent.ImageTransparency = 0.1
		wait(0)
		script.Parent.ImageTransparency = 0.2
		wait(0)
		script.Parent.ImageTransparency = 0.3
		wait(0)
		script.Parent.ImageTransparency = 0.4
		wait(0)
		script.Parent.ImageTransparency = 0.5
		wait(0)
		script.Parent.ImageTransparency = 0.6
		wait(0)
		script.Parent.ImageTransparency = 0.7
		wait(0)
		script.Parent.ImageTransparency = 0.8
		wait(0)
		script.Parent.ImageTransparency = 0.9
		wait(0)
		script.Parent.ImageTransparency = 1
	end)
end
coroutine.wrap(LMIFJPT_fake_script)()
local function LFQXCVZ_fake_script() -- DoorNumber.LocalScript 
	local script = Instance.new('LocalScript', DoorNumber)

	local Door = game.ReplicatedStorage.GameData.LatestRoom
	local Chase = game.ReplicatedStorage.GameData.ChaseStart
	script.Parent.Text = (Door.Value .. "/" .. Chase.Value)
	
	Door.Changed:Connect(function()
		script.Parent.Text = (Door.Value .. "/" .. Chase.Value)
	end)
end
coroutine.wrap(LFQXCVZ_fake_script)()
local function JEHAM_fake_script() -- DoorNumber.Hide 
	local script = Instance.new('LocalScript', DoorNumber)

	while true do
		wait(0)
		if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
			script.Parent.Visible = false
		else
			script.Parent.Visible = true
		end
	end
end
coroutine.wrap(JEHAM_fake_script)()
local function SXVL_fake_script() -- Revive.Show 
	local script = Instance.new('LocalScript', Revive)

	while true do
		wait(0)
		if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
			script.Parent.Visible = true
		else
			script.Parent.Visible = false
		end
	end
end
coroutine.wrap(SXVL_fake_script)()
local function HSLBI_fake_script() -- Revive.Click 
	local script = Instance.new('LocalScript', Revive)

	script.Parent.MouseButton1Click:Connect(function()
		game.ReplicatedStorage.Bricks.Revive:FireServer()
	end)
end
coroutine.wrap(HSLBI_fake_script)()
local function IBUJXQ_fake_script() -- EntityWarning.ScreechWarn 
	local script = Instance.new('LocalScript', EntityWarning)

	local cam = game.Workspace.CurrentCamera
	
	
	cam.ChildAdded:Connect(function(instance)
		if instance.Name == "Screech" then
			script.Parent.TextTransparency = 0
			script.Parent.Text = "Screech has spawned on you, look for him."
			wait(3)
			script.Parent.TextTransparency = 0.1
			wait(0)
			script.Parent.TextTransparency = 0.2
			wait(0)
			script.Parent.TextTransparency = 0.3
			wait(0)
			script.Parent.TextTransparency = 0.4
			wait(0)
			script.Parent.TextTransparency = 0.5
			wait(0)
			script.Parent.TextTransparency = 0.6
			wait(0)
			script.Parent.TextTransparency = 0.7
			wait(0)
			script.Parent.TextTransparency = 0.8
			wait(0)
			script.Parent.TextTransparency = 0.9
			wait(0)
			script.Parent.TextTransparency = 1
		end	
	end)
	
end
coroutine.wrap(IBUJXQ_fake_script)()
