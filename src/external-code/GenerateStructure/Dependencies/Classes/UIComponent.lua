local UIBaseHandler = require(script.Parent:WaitForChild("UIBase"))

return function (data, instance : UIBase)
    data = UIBaseHandler(data, instance)

    return data
end
