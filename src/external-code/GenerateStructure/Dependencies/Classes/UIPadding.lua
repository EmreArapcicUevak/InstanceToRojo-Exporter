local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UIConstraint)
    data = UIComponentHandler(data , instance)

    data["$properties"]["PaddingBottom"] = instance.PaddingBottom
    data["$properties"]["PaddingLeft"] = instance.PaddingLeft
    data["$properties"]["PaddingRight"] = instance.PaddingRight
    data["$properties"]["PaddingTop"] = instance.PaddingTop
    return data
end
