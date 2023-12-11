local LayerCollectorHandler = require(script.Parent:WaitForChild("LayerCollector"))

return function (data, instance : PluginGui)
    data = LayerCollectorHandler(data, instance)

    data["$properties"]["Title"] = instance.Title
    return data
end