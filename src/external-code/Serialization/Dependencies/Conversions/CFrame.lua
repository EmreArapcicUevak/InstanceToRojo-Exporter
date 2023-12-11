local function vectorToTable(vector : Vector3)
    return {vector.X,vector.Y,vector.Z}
end


return function (cframe : CFrameValue)
    local position = table.concat(vectorToTable(cframe.Position),',')
    local XOrientation = table.concat(vectorToTable(cframe.Rotation.XVector),',')
    local YOrientation = table.concat(vectorToTable(cframe.Rotation.YVector),',')
    local ZOrientation = table.concat(vectorToTable(cframe.Rotation.ZVector),',')

    return string.format('{"CFrame" : {"position" : [%s], "orientation" : [[%s],[%s],[%s]]}}', position, XOrientation, YOrientation, ZOrientation)
end