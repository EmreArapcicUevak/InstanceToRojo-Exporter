local LuaSourceContainerHandler = require(script.Parent:WaitForChild("LuaSourceContainer"))

return function (data, instance : BaseScript)
    data = LuaSourceContainerHandler(data, instance)

    data["$properties"]["Enabled"] = instance.Enabled
    data["$properties"]["LinkedSource"] = instance.LinkedSource
    return data
end
