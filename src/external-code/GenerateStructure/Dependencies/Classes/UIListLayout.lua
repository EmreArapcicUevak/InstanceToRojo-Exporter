local UIGridStyleLayoutHandler = require(script.Parent:WaitForChild("UIGridStyleLayout"))

return function (data, instance : UIListLayout)
    data = UIGridStyleLayoutHandler(data, instance)

    data["$properties"]["HorizontalFlex"] = instance.HorizontalFlex
    data["$properties"]["ItemLineAlignment"] = instance.ItemLineAlignment
    data["$properties"]["Padding"] = instance.Padding
    data["$properties"]["VerticalFlex"] = instance.VerticalFlex
    data["$properties"]["Wraps"] = instance.Wraps
    return data
end
