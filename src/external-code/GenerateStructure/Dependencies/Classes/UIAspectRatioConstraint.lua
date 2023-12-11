local UIConstraintHandler = require(script.Parent:WaitForChild("UIConstraint"))

return function (data, instance : UIAspectRatioConstraint)
    local data = UIConstraintHandler(data, instance)

    data["$properties"]["AspectRatio"] = instance.AspectRatio
    data["$properties"]["AspectType"] = instance.AspectType
    data["$properties"]["DominantAxis"] = instance.DominantAxis
    return data
end