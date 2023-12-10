local UIGridStyleLayoutHandler = require(script.Parent:WaitForChild("UIGridStyleLayout"))

return function (data, instance : UIGridLayout)
    data = UIGridStyleLayoutHandler(data, instance)

    data["$properties"]["CellPadding"] = instance.CellPadding
    data["$properties"]["CellSize"] = instance.CellSize
    data["$properties"]["FillDirectionMaxCells"] = instance.FillDirectionMaxCells
    data["$properties"]["StartCorner"] = instance.StartCorner
    return data
end