local GuiBase2dHandler = require(script.Parent:WaitForChild("GuiBase2d"))

return function (data, instance : GuiObject)
    data = GuiBase2dHandler(data, instance)

    data["$properties"]["Active"] = instance.Active
    data["$properties"]["AnchorPoint"] = instance.AnchorPoint
    data["$properties"]["AutomaticSize"] = instance.AutomaticSize
    data["$properties"]["BackgroundColor3"] = instance.BackgroundColor3
    data["$properties"]["BorderColor3"] = instance.BorderColor3
    data["$properties"]["BackgroundTransparency"] = instance.BackgroundTransparency
    data["$properties"]["BorderMode"] = instance.BorderMode
    data["$properties"]["BorderSizePixel"] = instance.BorderSizePixel
    data["$properties"]["ClipsDescendants"] = instance.ClipsDescendants
    data["$properties"]["Interactable"] = instance.Interactable
    data["$properties"]["LayoutOrder"] = instance.LayoutOrder
    data["$properties"]["Position"] = instance.Position
    data["$properties"]["Rotation"] = instance.Rotation
    data["$properties"]["Selectable"] = instance.Selectable
    data["$properties"]["SelectionOrder"] = instance.SelectionOrder
    data["$properties"]["Size"] = instance.Size
    data["$properties"]["SizeConstraint"] = instance.SizeConstraint
    data["$properties"]["Visible"] = instance.Visible
    data["$properties"]["ZIndex"] = instance.ZIndex

    return data
end