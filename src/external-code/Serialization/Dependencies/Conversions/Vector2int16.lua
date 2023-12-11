return function (value : Vector2int16)
    local tablePos = {value.X, value.Y}
    return string.format('{"Vector2int16" : [%s]}', table.concat(tablePos,',')) 
end
