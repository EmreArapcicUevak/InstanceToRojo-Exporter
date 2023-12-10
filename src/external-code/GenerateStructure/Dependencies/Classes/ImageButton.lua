local GuiButtonHandler = require(script.Parent:WaitForChild("GuiButton"))

return function (data, instance : ImageButton)
    data = GuiButtonHandler(data, instance)

    data["$properties"]["HoverImage"] = instance.HoverImage
    data["$properties"]["Image"] = instance.Image
    data["$properties"]["ImageColor3"] = instance.ImageColor3
    data["$properties"]["ImageRectOffset"] = instance.ImageRectOffset
    data["$properties"]["ImageRectSize"] = instance.ImageRectSize
    data["$properties"]["ImageTransparency"] = instance.ImageTransparency
    data["$properties"]["PressedImage"] = instance.PressedImage
    data["$properties"]["ResampleMode"] = instance.ResampleMode -- Assuming ResampleMode is an Enum and we store the name
    data["$properties"]["ScaleType"] = instance.ScaleType -- Assuming ScaleType is an Enum and we store the name
    data["$properties"]["SliceCenter"] =  instance.SliceCenter 
    data["$properties"]["SliceScale"] = instance.SliceScale
    data["$properties"]["TileSize"] =   instance.TileSize 

    return data
end
