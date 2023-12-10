local InstanceHandler = require(script.Parent:WaitForChild("Instance"))

return function (data, instance : Instance)
    data = InstanceHandler(data, instance)

    return data
end