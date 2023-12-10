local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UIConstraint)
    data = UIComponentHandler(data , instance)

    return data
end