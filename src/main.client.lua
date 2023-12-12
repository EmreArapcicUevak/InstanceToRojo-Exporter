local Selection = game:GetService("Selection")
local modules = script:WaitForChild("modules")

local generateStructure = require(modules:WaitForChild("GenerateStructure"))
local serialize = require(modules:WaitForChild("SerializeTable"))

-- Create a new toolbar section titled "Instance To Rojo"
local toolbar = plugin:CreateToolbar("Instance To Rojo")

-- Add a toolbar button named "Create Empty Script"
local convertInstanceButton = toolbar:CreateButton("Convert Instance Button", "Convert your selected roblox instance in an rojo project file!", "rbxassetid://14978048121")

-- Make button clickable even if 3D viewport is hidden
convertInstanceButton.ClickableWhenViewportHidden = true

local function onButtonClicked()
	local selectedObjects = Selection:Get()
	
	for _, instance : Instance in pairs(selectedObjects) do
		local RojoJsonString = serialize(generateStructure(instance))
		print(string.format("----BEGIN PROJECT JSON GENERATION----\n%s\n----END PROJECT JSON GENERATION----", RojoJsonString))
	end
end

convertInstanceButton.Click:Connect(onButtonClicked)