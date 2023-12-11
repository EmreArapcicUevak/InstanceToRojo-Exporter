local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UIGradient)
    data = UIComponentHandler(data , instance)

    data["$properties"]["Color"] = instance.Color
    data["$properties"]["Enabled"] = instance.Enabled
    data["$properties"]["Offset"] = instance.Offset
    data["$properties"]["Rotation"] = instance.Rotation
    data["$properties"]["Transparency"] = instance.Transparency
    return data
end
