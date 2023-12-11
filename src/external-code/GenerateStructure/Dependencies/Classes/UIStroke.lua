local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UIStroke)
    data = UIComponentHandler(data , instance)

    data["$properties"]["ApplyStrokeMode"] = instance.ApplyStrokeMode
    data["$properties"]["Color"] = instance.Color
    data["$properties"]["Enabled"] = instance.Enabled
    data["$properties"]["LineJoinMode"] = instance.LineJoinMode
    data["$properties"]["Thickness"] = instance.Thickness
    data["$properties"]["Transparency"] = instance.Transparency 
    return data
end
