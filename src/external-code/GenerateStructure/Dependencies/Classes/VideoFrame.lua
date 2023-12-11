local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : VideoFrame)
    data = GuiObjectHandler(data, instance)

    data["$properties"]["Video"] = instance.Video
    data["$properties"]["Looped"] = instance.Looped
    data["$properties"]["Playing"] = instance.Playing
    data["$properties"]["TimePosition"] = instance.TimePosition
    data["$properties"]["Volume"] = instance.Volume

    return data
end
