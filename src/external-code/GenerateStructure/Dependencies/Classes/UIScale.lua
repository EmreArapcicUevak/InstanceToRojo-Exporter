local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UIScale)
    data = UIComponentHandler(data , instance)

    data["$properties"]["Scale"] = instance.Scale
    return data
end
