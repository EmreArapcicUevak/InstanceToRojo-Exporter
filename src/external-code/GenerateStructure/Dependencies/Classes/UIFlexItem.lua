local UIComponentHandler = require(script.Parent:WaitForChild("UIComponent"))

return function (data, instance : UIFlexItem)
    data = UIComponentHandler(data , instance)

    data["$properties"]["FlexMode"] = instance.FlexMode
    data["$properties"]["GrowRatio"] = instance.GrowRatio
    data["$properties"]["ItemLineAlignment"] = instance.ItemLineAlignment
    data["$properties"]["ShrinkRatio"] = instance.ShrinkRatio
    return data
end
