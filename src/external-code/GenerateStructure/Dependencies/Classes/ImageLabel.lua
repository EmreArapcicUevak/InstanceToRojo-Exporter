local GuiLabelHandler = require(script.Parent:WaitForChild("GuiLabel"))

return function (data, instance : ImageLabel)
    data = GuiLabelHandler(data, instance)

    data["$properties"]["Image"] = instance.Image
    data["$properties"]["ImageColor3"] = instance.ImageColor3
    data["$properties"]["ImageRectOffset"] = instance.ImageRectOffset
    data["$properties"]["ImageRectSize"] = instance.ImageRectSize
    data["$properties"]["ImageTransparency"] = instance.ImageTransparency
    -- Skip IsLoaded because it's read-only
    data["$properties"]["ResampleMode"] = instance.ResampleMode -- Directly use the Enum value
    data["$properties"]["ScaleType"] = instance.ScaleType -- Directly use the Enum value
    data["$properties"]["SliceCenter"] = instance.SliceCenter
    data["$properties"]["SliceScale"] = instance.SliceScale
    data["$properties"]["TileSize"] = instance.TileSize
    return data
end