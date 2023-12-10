local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : CanvasGroup)
    data = GuiObjectHandler(data, instance)

    data["$properties"]["GroupColor3"] = instance.GroupColor3
    data["$properties"]["GroupTransparency"] = instance.GroupTransparency
    return data
end