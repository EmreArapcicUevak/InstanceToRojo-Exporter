local GuiObjectHandler = require(script.Parent:WaitForChild("GuiObject"))

return function (data, instance : TextBox)
    data = GuiObjectHandler(data, instance)

    data["$properties"]["ClearTextOnFocus"] = instance.ClearTextOnFocus
    data["$properties"]["CursorPosition"] = instance.CursorPosition
    data["$properties"]["FontFace"] = instance.FontFace
    data["$properties"]["LineHeight"] = instance.LineHeight
    data["$properties"]["MaxVisibleGraphemes"] = instance.MaxVisibleGraphemes
    data["$properties"]["MultiLine"] = instance.MultiLine
    data["$properties"]["PlaceholderColor3"] = instance.PlaceholderColor3
    data["$properties"]["PlaceholderText"] = instance.PlaceholderText
    data["$properties"]["RichText"] = instance.RichText
    data["$properties"]["ShowNativeInput"] = instance.ShowNativeInput
    data["$properties"]["Text"] = instance.Text
    data["$properties"]["TextColor3"] = instance.TextColor3
    data["$properties"]["TextEditable"] = instance.TextEditable
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