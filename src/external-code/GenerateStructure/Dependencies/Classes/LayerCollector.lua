local GuiBase2dHandler = require(script.Parent:WaitForChild("GuiBase2d"))

return function (data, instance : LayerCollector)
    data = GuiBase2dHandler(data, instance)

    data["$properties"]["Enabled"] = instance.Enabled
    data["$properties"]["ResetOnSpawn"] = instance.ResetOnSpawn
    data["$properties"]["ZIndexBehavior"] = instance.ZIndexBehavior
    return data
end
