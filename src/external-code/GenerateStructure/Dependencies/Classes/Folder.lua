local InstanceHandler = require(script.Parent:WaitForChild("Instance"))

return function (data, instance: Configuration)
    data = InstanceHandler(data, instance)
    
    return data
end