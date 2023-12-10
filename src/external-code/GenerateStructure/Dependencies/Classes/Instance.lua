return function(data, instance : Instance)
    data = data or {}
    assert(type(data) == "table", "passed in data isn't a table??")

    data["Name"] = instance.Name
    data["$className"] = instance.ClassName
    data["$properties"] = {}

    return data
end
