local GuiBaseHandler = require(script.Parent:WaitForChild("GuiBase"))

return function (data, instance : GuiBase2d)
    data = GuiBaseHandler(data, instance)

    data["$properties"]["AutoLocalize"] = instance.AutoLocalize
    data["$properties"]["RootLocalizationTable"] = instance.RootLocalizationTable
    data["$properties"]["SelectionGroup"] = instance.SelectionGroup

    return data
end