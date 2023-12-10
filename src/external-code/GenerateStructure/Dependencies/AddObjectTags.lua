local CollectionService = game:GetService("CollectionService")

return function (data, instance : Instance)
    assert(type(data) == "table", "Data isnt a table can't save tags here!")    
    data["tags"] = CollectionService:GetTags(instance)

    return data
end