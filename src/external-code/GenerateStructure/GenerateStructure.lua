--!strict
local propertyHandlers = require(script:WaitForChild("PropertyHandlers"))
local addObjectTags = require(script:WaitForChild("AddObjectTags"))

local function generateChildStruct(child : Instance)
    if propertyHandlers[child.ClassName] == nil then
        warn(string.format("There is currently no support for the instances of type [%s]\nIf you wish to feel free to contribute your own code or inform the owner of the repository to add support for this instace\nGITHUB LINK: https://github.com/EmreArapcicUevak/InstanceToRojo-Exporter", child.ClassName))
        return nil
    end

    local dataForChild = propertyHandlers[child.ClassName](nil, child)    
    addObjectTags(dataForChild, child)

    for index : number, grandChild: Instance in pairs(child:GetChildren()) do
        local key = string.format("%d-%s", index, grandChild.Name)
        dataForChild[key] = generateChildStruct(grandChild)
    end

    return dataForChild
end


return function (object : Instance)
    if propertyHandlers[object.ClassName] == nil then
        warn(string.format("There is currently no support for the instances of type [%s]\nIf you wish to feel free to contribute your own code or inform the owner of the repository to add support for this instace\nGITHUB LINK: https://github.com/EmreArapcicUevak/InstanceToRojo-Exporter", object.ClassName))
        return nil
    end

    local structure = {["name"] = object.Name}
    structure["tree"] = propertyHandlers[object.ClassName](nil, object)
    addObjectTags(structure["tree"], object)

    for index : number, child: Instance in pairs(object:GetChildren()) do
        structure["tree"][string.format("%d-%s", index, child.Name)] = generateChildStruct(child)
    end

    return structure
end