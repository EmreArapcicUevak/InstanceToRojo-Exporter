local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : Frame)
    data = GuiObjectHandler(data, instance)

    data["$properties"]["AutoButtonColor"] = instance.AutoButtonColor
    data["$properties"]["Modal"] = instance.Modal
    data["$properties"]["Selected"] = instance.Selected
    data["$properties"]["Style"] = instance.Style

    return data
end