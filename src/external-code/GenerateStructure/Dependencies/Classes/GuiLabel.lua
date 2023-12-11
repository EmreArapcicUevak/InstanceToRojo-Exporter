local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : GuiLabel)
    data = GuiObjectHandler(data, instance)

    return data
end