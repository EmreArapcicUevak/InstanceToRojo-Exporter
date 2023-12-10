local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UICorner)
    data = UIComponentHandler(data , instance)

    data["$properties"]["CornerRadius"] = instance.CornerRadius
    return data
end