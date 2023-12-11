return function (value : table)
    return string.format("[%s]", table.concat(value, ','))
end