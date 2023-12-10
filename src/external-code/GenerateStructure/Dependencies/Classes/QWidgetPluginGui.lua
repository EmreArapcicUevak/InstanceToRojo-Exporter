local PluginGuiHandler = require(script.Parent:WaitForChild("PluginGui"))

return function (data, instance : QWidgetPluginGui)
    data = PluginGuiHandler(data, instance)

    return data
end