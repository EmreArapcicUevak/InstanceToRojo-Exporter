local InstanceHandler = require(script.Parent:WaitForChild("Instance"))

return function (data, instance : ValueBase)
    data = InstanceHandler(data, instance)
    
    return data
end