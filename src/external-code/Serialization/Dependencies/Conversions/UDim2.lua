return function (value: UDim2)
    local tabValue = {{value.X.Scale, value.X.Offset}, {value.Y.Scale, value.Y.Offset}}
    return string.format('{"UDim2" : [[%s], [%s]]}', table.concat(tabValue[1],','), table.concat(tabValue[2],','))
end
