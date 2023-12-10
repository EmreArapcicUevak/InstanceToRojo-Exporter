
local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : Frame)
    data = GuiObjectHandler(data, instance)

    return data
end