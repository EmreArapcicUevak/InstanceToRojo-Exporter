local toRojoString = require(script:WaitForChild("Dependencies"):WaitForChild("ConvertToRojoString"))

local function isDict(tableToCheck)
    for _,_ in ipairs(tableToCheck) do
        return false
    end

    for _,_ in pairs(tableToCheck) do
        return true
    end

    return false
end

local function serialize(object : {any : any}, depth : number?)
    depth = depth or 0
    local indent = string.rep('\t', depth)
    local str = "{\n"
    local totalElements, processedElements = 0, 0

    for _,_ in pairs(object) do totalElements += 1 end

    for fieldName : string, value : any in pairs(object) do
        processedElements += 1
        str = str .. string.format("%s\t\"%s\" : ", indent, fieldName)

        if type(value) == "table" and isDict(value) then
            str = str .. serialize(value, depth + 1)
        else
            str = str .. toRojoString(value)
        end 

        if processedElements == totalElements then
            str = str .. "\n"
        else
            str = str .. ",\n"
        end
    end
    str = str .. indent .. "}"

    return str
end

return serialize