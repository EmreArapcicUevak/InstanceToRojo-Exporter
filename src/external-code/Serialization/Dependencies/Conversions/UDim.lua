return function (value: UDim)
    local tabValue = {value.Scale, value.Offset}
    return string.format('{"UDim" : [%s]}', table.concat(tabValue,','))
end