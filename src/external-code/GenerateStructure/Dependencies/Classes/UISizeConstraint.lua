local UIConstraintHandler = require(script.Parent:WaitForChild("UIConstraint"))

return function (data, instance : UISizeConstraint)
    local data = UIConstraintHandler(data, instance)

    data["$properties"]["MaxSize"] = instance.MaxSize
    data["$properties"]["MinSize"] = instance.MinSize
    return data
end
