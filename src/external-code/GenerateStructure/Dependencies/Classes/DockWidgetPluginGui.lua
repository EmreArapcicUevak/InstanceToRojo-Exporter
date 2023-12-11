
local PluginGuiHandler = require(script.Parent:WaitForChild("PluginGui"))

return function (data, instance : DockWidgetPluginGui)
    data = PluginGuiHandler(data, instance)

    return data
end