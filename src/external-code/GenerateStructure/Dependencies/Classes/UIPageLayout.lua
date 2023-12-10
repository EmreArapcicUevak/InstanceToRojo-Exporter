local UIGridStyleLayoutHandler = require(script.Parent:WaitForChild("UIGridStyleLayout"))

return function (data, instance : UIPageLayout)
    data = UIGridStyleLayoutHandler(data, instance)

    data["$properties"]["Animated"] = instance.Animated
    data["$properties"]["Circular"] = instance.Circular
    data["$properties"]["EasingDirection"] = instance.EasingDirection
    data["$properties"]["EasingStyle"] = instance.EasingStyle
    data["$properties"]["GamepadInputEnabled"] = instance.GamepadInputEnabled
    data["$properties"]["Padding"] = instance.Padding
    data["$properties"]["ScrollWheelInputEnabled"] = instance.ScrollWheelInputEnabled
    data["$properties"]["TouchInputEnabled"] = instance.TouchInputEnabled
    data["$properties"]["TweenTime"] = instance.TweenTime
    return data
end
