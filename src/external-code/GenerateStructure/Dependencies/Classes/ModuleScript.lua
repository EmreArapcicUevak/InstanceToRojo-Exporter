local LuaSourceContainerHandler = require(script.Parent:WaitForChild("LuaSourceContainer"))

return function (data, instance : ModuleScript)
    data = LuaSourceContainerHandler(data, instance)

    data["$properties"]["LinkedSource"] = instance.LinkedSource
    data["$properties"]["Source"] = instance.Source
    data["$path"] = "!!INSERT PATH HERE!!"
    return data
end
