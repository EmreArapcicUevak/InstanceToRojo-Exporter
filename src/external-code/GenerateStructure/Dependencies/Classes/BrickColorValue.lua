local ValueBaseHandler = require(script.Parent:WaitForChild("ValueBase"))

return function (data, instance : BrickColorValue)
    data = ValueBaseHandler(data, instance)

    data["$properties"]["Value"] = instance.Value
    return data
end