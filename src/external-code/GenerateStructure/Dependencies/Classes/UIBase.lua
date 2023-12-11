local InstanceHandler = require(script.Parent:WaitForChild("Instance"))

return function (data, instance : UIBase)
    data = InstanceHandler(data, instance)

    return data
end