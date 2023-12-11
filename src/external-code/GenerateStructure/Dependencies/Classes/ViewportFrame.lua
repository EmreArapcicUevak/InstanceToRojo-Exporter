local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : ViewportFrame)
    data = GuiObjectHandler(data, instance)

    data["$properties"]["Ambient"] = instance.Ambient
    data["$properties"]["ImageColor3"] = instance.ImageColor3
    data["$properties"]["ImageTransparency"] = instance.ImageTransparency
    data["$properties"]["LightColor"] = instance.LightColor
    data["$properties"]["LightDirection"] = instance.LightDirection

    return data
end
