return function (value : Color3)
    local colors = table.concat({value.R, value.G, value.B},',')
    return string.format('{"Color3" : [%s]}', colors)
end