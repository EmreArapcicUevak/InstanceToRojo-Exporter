local Conversions = {}

for _, module : ModuleScript in pairs(script.Parent:WaitForChild("Conversions"):GetChildren()) do
    Conversions[module.Name] = require(module)
end

return function (value)
    if Conversions[typeof(value)] then
       return Conversions[typeof(value)](value) 
    else
        warn(string.format("No valid conversion for [%s]... Feel free to make your own and or contribute to the repository :)", typeof(value)))
        return "\"NOT IMPLEMENTED\""
    end    
end