local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : ScrollingFrame)
    data = GuiObjectHandler(data, instance)

    data["$properties"]["AutomaticCanvasSize"] = instance.AutomaticCanvasSize
    data["$properties"]["BottomImage"] = instance.BottomImage
    data["$properties"]["CanvasPosition"] = instance.CanvasPosition
    data["$properties"]["CanvasSize"] = instance.CanvasSize
    data["$properties"]["ElasticBehavior"] = instance.ElasticBehavior
    data["$properties"]["HorizontalScrollBarInset"] = instance.HorizontalScrollBarInset
    data["$properties"]["MidImage"] = instance.MidImage
    data["$properties"]["ScrollBarImageColor3"] = instance.ScrollBarImageColor3
    data["$properties"]["ScrollBarImageTransparency"] = instance.ScrollBarImageTransparency
    data["$properties"]["ScrollBarThickness"] = instance.ScrollBarThickness
    data["$properties"]["ScrollingDirection"] = instance.ScrollingDirection
    data["$properties"]["ScrollingEnabled"] = instance.ScrollingEnabled
    data["$properties"]["TopImage"] = instance.TopImage
    data["$properties"]["VerticalScrollBarInset"] = instance.VerticalScrollBarInset
    data["$properties"]["VerticalScrollBarPosition"] = instance.VerticalScrollBarPosition   

    return data
end