local ScriptHandler = require(script.Parent:WaitForChild("Script"))

return function (data, instance : LocalScript)
    data = ScriptHandler(data, instance)

    return data
end
