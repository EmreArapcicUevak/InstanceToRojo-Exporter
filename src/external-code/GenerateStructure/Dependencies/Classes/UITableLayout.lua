local UIGridStyleLayoutHandler = require(script.Parent:WaitForChild("UIGridStyleLayout"))

return function (data, instance : UITableLayout)
    data = UIGridStyleLayoutHandler(data, instance)

    data["$properties"]["FillEmptySpaceColumns"] = instance.FillEmptySpaceColumns
    data["$properties"]["FillEmptySpaceRows"] = instance.FillEmptySpaceRows
    data["$properties"]["MajorAxis"] = instance.MajorAxis
    data["$properties"]["Padding"] = instance.Padding
    return data
end
