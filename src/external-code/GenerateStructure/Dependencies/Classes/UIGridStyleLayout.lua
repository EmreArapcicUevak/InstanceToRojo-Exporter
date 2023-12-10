local UILayoutHander = require(script.Parent:WaitForChild("UILayout"))

return function (data, instance : UIGridStyleLayout)
    local data = UILayoutHander(data , instance)

    data["$properties"]["FillDirection"] = instance.FillDirection
    data["$properties"]["HorizontalAlignment"] = instance.HorizontalAlignment
    data["$properties"]["SortOrder"] = instance.SortOrder
    data["$properties"]["VerticalAlignment"] = instance.VerticalAlignment
    return data
end