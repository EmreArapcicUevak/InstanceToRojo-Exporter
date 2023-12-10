local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UILayout)
    data = UIComponentHandler(data , instance)

    return data
end
