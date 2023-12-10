local SurfaceGuiBaseHandler = require(script.Parent:WaitForChild("SurfaceGuiBase"))

return function (data, instance : AdGui)
    data = SurfaceGuiBaseHandler(data, instance)

    data["$properties"]["AdShape"] = instance.AdShape
    data["$properties"]["EnableVideoAds"] = instance.EnableVideoAds
    data["$properties"]["FallbackImage"] = instance.FallbackImage
    return data
end