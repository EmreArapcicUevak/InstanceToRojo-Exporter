--!strict
local propertyHandlers = require(script:WaitForChild("PropertyHandlers"))

local function generateChildStruct(child : Instance)
    local dataForChild = propertyHandlers[child.ClassName](nil, child)    

    for _, grandChild: Instance in pairs(child:GetChildren()) do
        dataForChild[grandChild.Name] = generateChildStruct(grandChild)
    end

    return dataForChild
end


return function (object : Instance)
    local structure = propertyHandlers[object.ClassName](nil, object)
    structure["tree"] = {
        ["$className"] = "DataModel"
    }

    for _, child: Instance in pairs(object:GetChildren()) do
        structure["tree"][child.Name] = generateChildStruct(child)
    end

    return structure
end