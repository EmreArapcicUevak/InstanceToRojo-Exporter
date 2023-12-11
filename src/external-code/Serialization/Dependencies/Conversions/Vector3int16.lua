return function (value : Vector3int16)
    local tablePos = {value.X, value.Y, value.Z}
    return string.format('{"Vector3int16" : [%s]}', table.concat(tablePos,',')) 
end
