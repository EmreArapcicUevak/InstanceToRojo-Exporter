local InstanceHandler = require(script.Parent:WaitForChild("Instance"))

return function (data, instance : LuaSourceContainer)
    data = InstanceHandler(data, instance)

    return data
end