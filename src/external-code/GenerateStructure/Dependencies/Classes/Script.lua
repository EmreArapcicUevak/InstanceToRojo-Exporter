local BaseScriptHandler = require(script.Parent:WaitForChild("BaseScript"))

return function (data, instance : Script)
    data = BaseScriptHandler(data, instance)

    data["$path"] = "!!INSERT PATH HERE!!"
    return data
end
