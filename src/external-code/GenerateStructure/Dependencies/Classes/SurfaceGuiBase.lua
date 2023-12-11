local LayerCollectorHandler = require(script.Parent:WaitForChild("LayerCollector"))

return function (data, instance : SurfaceGuiBase)
    data = LayerCollectorHandler(data, instance)

    data["$properties"]["Active"] = instance.Active
    data["$properties"]["Adornee"] = instance.Adornee
    data["$properties"]["Face"] = instance.Face

    return data
end
