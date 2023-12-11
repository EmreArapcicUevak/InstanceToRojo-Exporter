local LayerCollectorHandler = require(script.Parent:WaitForChild("LayerCollector"))

return function (data, instance : ScreenGui)
    data = LayerCollectorHandler(data, instance)

    data["$properties"]["ClipToDeviceSafeArea"] = instance.ClipToDeviceSafeArea
    data["$properties"]["DisplayOrder"] = instance.DisplayOrder
    data["$properties"]["IgnoreGuiInset"] = instance.IgnoreGuiInset
    data["$properties"]["SafeAreaCompatibility"] = instance.SafeAreaCompatibility
    return data
end
