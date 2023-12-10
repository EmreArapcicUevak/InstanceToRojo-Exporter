local GuiLabelHandler = require(script.Parent:WaitForChild("GuiLabel"))

return function (data, instance : TextLabel)
    data = GuiLabelHandler(data, instance)

    data["$properties"]["FontFace"] = instance.Font
    data["$properties"]["LineHeight"] = instance.LineHeight
    -- Skip LocalizedText as it's read-only and not replicated
    data["$properties"]["MaxVisibleGraphemes"] = instance.MaxVisibleGraphemes
    data["$properties"]["RichText"] = instance.RichText
    data["$properties"]["Text"] = instance.Text
    -- Skip TextBounds as it's read-only and not replicated
    data["$properties"]["TextColor3"] = instance.TextColor3
    data["$properties"]["TextDirection"] = instance.TextDirection
    -- Skip TextFits as it's read-only and not replicated
    data["$properties"]["TextScaled"] = instance.TextScaled
    data["$properties"]["TextSize"] = instance.TextSize
    data["$properties"]["TextStrokeColor3"] = instance.TextStrokeColor3
    data["$properties"]["TextStrokeTransparency"] = instance.TextStrokeTransparency
    data["$properties"]["TextTransparency"] = instance.TextTransparency
    data["$properties"]["TextTruncate"] = instance.TextTruncate
    data["$properties"]["TextWrapped"] = instance.TextWrapped
    data["$properties"]["TextXAlignment"] = instance.TextXAlignment
    data["$properties"]["TextYAlignment"] = instance.TextYAlignment
    return data
end