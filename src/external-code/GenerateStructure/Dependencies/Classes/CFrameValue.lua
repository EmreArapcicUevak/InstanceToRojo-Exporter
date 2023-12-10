local ValueBaseHandler = require(script.Parent:WaitForChild("ValueBase"))

return function (data, instance : CFrameValue)
    data = ValueBaseHandler(data, instance)

    data["$properties"]["Value"] = instance.Value
    return data
end
