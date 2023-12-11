local PropertyHandlers = {}
for _, module : ModuleScript in pairs(script:WaitForChild("Classes"):GetChildren()) do
    PropertyHandlers[module.Name] = require(module)    
end

return PropertyHandlers