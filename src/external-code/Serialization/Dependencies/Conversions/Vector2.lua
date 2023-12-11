return function (value : Vector2)
    local tablePos = {value.X, value.Y}
    return string.format('{"Vector2" : [%s]}', table.concat(tablePos,',')) 
end