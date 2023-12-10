local UIConstraintHandler = require(script.Parent:WaitForChild("UIConstraint"))

return function (data, instance : UIAspectRatioConstraint)
    local data = UIConstraintHandler(data, instance)

    data["$properties"]["MaxTextSize"] = instance.MaxTextSize
    data["$properties"]["MinTextSize"] = instance.MinTextSize
    return data
end
