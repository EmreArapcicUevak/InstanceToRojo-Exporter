return function (value : Vector3)
    local tablePos = {value.X, value.Y, value.Z}
    return string.format('{"Vector3" : [%s]}', table.concat(tablePos,',')) 
end