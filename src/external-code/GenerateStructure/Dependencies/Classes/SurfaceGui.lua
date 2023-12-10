local SurfaceGuiBaseHandler = require(script.Parent:WaitForChild("SurfaceGuiBase"))

return function (data, instance : SurfaceGui)
    data = SurfaceGuiBaseHandler(data, instance)

    data["$properties"]["AlwaysOnTop"] = instance.AlwaysOnTop
    data["$properties"]["Brightness"] = instance.Brightness
    data["$properties"]["CanvasSize"] = instance.CanvasSize
    data["$properties"]["ClipsDescendants"] = instance.ClipsDescendants
    data["$properties"]["LightInfluence"] = instance.LightInfluence
    data["$properties"]["MaxDistance"] = instance.MaxDistance
    data["$properties"]["PixelsPerStud"] = instance.PixelsPerStud
    data["$properties"]["SizingMode"] = instance.SizingMode
    data["$properties"]["ToolPunchThroughDistance"] = instance.ToolPunchThroughDistance
    data["$properties"]["ZOffset"] = instance.ZOffset
    return data
end