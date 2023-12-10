local Selection = game:GetService("Selection")
local modules = script:WaitForChild("modules")

local generateStructure = require(modules:WaitForChild("GenerateStructure"))

-- Create a new toolbar section titled "Instance To Rojo"
local toolbar = plugin:CreateToolbar("Instance To Rojo")

-- Add a toolbar button named "Create Empty Script"
local convertInstanceButton = toolbar:CreateButton("Convert Instance Button", "Convert your selected roblox instance in an rojo project file!", "rbxassetid://14978048121")

-- Make button clickable even if 3D viewport is hidden
convertInstanceButton.ClickableWhenViewportHidden = true

local function onButtonClicked()
	local selectedObjects = Selection:Get()
	
	for _, instance : Instance in pairs(selectedObjects) do
		print(generateStructure(instance))
	end
end

convertInstanceButton.Click:Connect(onButtonClicked)