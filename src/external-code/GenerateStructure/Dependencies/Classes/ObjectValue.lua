local ValueBaseHandler = require(script.Parent:WaitForChild("ValueBase"))

return function (data, instance : ObjectValue)
    data = ValueBaseHandler(data, instance)

    return data
end
