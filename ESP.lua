-- Gui to Lua
-- Version: 3.2

-- Instances:

local ESP = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ESPInstructions = Instance.new("TextLabel")
local ToggleInstructions = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ESP.Name = "ESP"
ESP.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ESP
MainFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
MainFrame.Position = UDim2.new(0, 0, 0.825983286, 0)
MainFrame.Size = UDim2.new(0, 306, 0, 146)

ESPInstructions.Name = "ESPInstructions"
ESPInstructions.Parent = MainFrame
ESPInstructions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPInstructions.BackgroundTransparency = 1.000
ESPInstructions.Position = UDim2.new(0, 0, 0.657534242, 0)
ESPInstructions.Size = UDim2.new(0, 200, 0, 50)
ESPInstructions.Font = Enum.Font.SourceSans
ESPInstructions.Text = "Press   ] to activate ESP"
ESPInstructions.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPInstructions.TextSize = 14.000
ESPInstructions.TextXAlignment = Enum.TextXAlignment.Left

ToggleInstructions.Name = "ToggleInstructions"
ToggleInstructions.Parent = MainFrame
ToggleInstructions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleInstructions.BackgroundTransparency = 1.000
ToggleInstructions.Position = UDim2.new(0, 0, 0.472602725, 0)
ToggleInstructions.Size = UDim2.new(0, 200, 0, 50)
ToggleInstructions.Font = Enum.Font.SourceSans
ToggleInstructions.Text = "Press   \\  to Toggle the GUI"
ToggleInstructions.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleInstructions.TextSize = 14.000
ToggleInstructions.TextXAlignment = Enum.TextXAlignment.Left

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.153594777, 0, 0.0547945201, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Aero's ESP GUI"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 35.000

-- Scripts:

local function CGKA_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	local UIS = game:GetService("UserInputService")
	local UIToggled = true
	local ESPToggled = false
	local Players = game.Players
	
	
	UIS.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightBracket then
			local getPlayers = game.Players:GetPlayers()
	
			if ESPToggled == false then
				local getPlayers = game.Players:GetPlayers()
	
				for i, v in pairs(getPlayers) do
					local ESP = Instance.new("Highlight")
					ESP.Name = "ESP"
					ESP.FillTransparency = 1
					ESP.Parent = v.Character
		
					
				end
				ESPToggled = true
			else
				
				local getPlayers = game.Players:GetPlayers()
	
				for i, v in pairs(getPlayers) do
					local foundESP = v.Character:FindFirstChild("ESP")
					foundESP:Destroy()
				end
				ESPToggled = false
			end
		end
	end)
	
	UIS.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.BackSlash then
			if UIToggled == true then
				script.Parent.Visible = false
				UIToggled = false
				
			else
				
				script.Parent.Visible = true
				UIToggled = true
				
			end
		end
	end)
end
coroutine.wrap(CGKA_fake_script)()
