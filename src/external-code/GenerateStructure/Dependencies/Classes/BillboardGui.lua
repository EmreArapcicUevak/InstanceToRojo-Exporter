local LayerCollectorHandler = require(script.Parent:WaitForChild("LayerCollector"))

return function (data, instance : BillboardGui)
    data = LayerCollectorHandler(data, instance)

    data["$properties"]["Active"] = instance.Active
    data["$properties"]["Adornee"] = instance.Adornee
    data["$properties"]["AlwaysOnTop"] = instance.AlwaysOnTop
    data["$properties"]["Brightness"] = instance.Brightness
    data["$properties"]["ClipsDescendants"] = instance.ClipsDescendants
    data["$properties"]["DistanceLowerLimit"] = instance.DistanceLowerLimit
    data["$properties"]["DistanceStep"] = instance.DistanceStep
    data["$properties"]["DistanceUpperLimit"] = instance.DistanceUpperLimit
    data["$properties"]["ExtentsOffset"] = instance.ExtentsOffset
    data["$properties"]["ExtentsOffsetWorldSpace"] = instance.ExtentsOffsetWorldSpace
    data["$properties"]["LightInfluence"] = instance.LightInfluence
    data["$properties"]["MaxDistance"] = instance.MaxDistance
    data["$properties"]["Size"] = instance.Size
    data["$properties"]["SizeOffset"] = instance.SizeOffset
    data["$properties"]["StudsOffset"] = instance.StudsOffset
    data["$properties"]["StudsOffsetWorldSpace"] = instance.StudsOffsetWorldSpace

    return data
end
