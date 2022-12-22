-- Gui to Lua
-- Version: 3.2

-- Instances:

local DoorsUtility = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local DoorNumber = Instance.new("TextLabel")
local Indicator = Instance.new("TextLabel")
local DoorOpened = Instance.new("ImageLabel")

--Properties:

DoorsUtility.Name = "DoorsUtility"
DoorsUtility.Parent = game.StarterGui.Doors Utility
DoorsUtility.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = DoorsUtility
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.035982009, 0, 0.875536561, 0)
TextLabel.Size = UDim2.new(0.0977511331, 0, 0.0642346367, 0)
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "100"
TextLabel.TextColor3 = Color3.fromRGB(255, 201, 179)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

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

-- Scripts:

local function INDLP_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	script.Parent.Text = script.Parent.PlrValue
	
	script.Parent.PlrValue.Changed:Connect(function()
		script.Parent.Text = script.Parent.PlrValue
	end)
end
coroutine.wrap(INDLP_fake_script)()
local function CRSKYP_fake_script() -- DoorOpened.LocalScript 
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
coroutine.wrap(CRSKYP_fake_script)()
local function KSWXUEX_fake_script() -- DoorNumber.LocalScript 
	local script = Instance.new('LocalScript', DoorNumber)

	local Door = game.ReplicatedStorage.GameData.LatestRoom
	local Chase = game.ReplicatedStorage.GameData.ChaseStart
	script.Parent.Text = (Door.Value .. "/" .. Chase.Value)
	
	Door.Changed:Connect(function()
		script.Parent.Text = (Door.Value .. "/" .. Chase.Value)
	end)
end
coroutine.wrap(KSWXUEX_fake_script)()
