# InstanceToRojo-Exporter

## Overview
"InstanceToRojo Exporter" is a Roblox Studio plugin meticulously designed to convert selected instances into [Rojo](https://rojo.space) project JSON files. This powerful tool streamlines Rojo-based development workflows, ensuring seamless integration within Roblox Studio. Originating from a need to version control UI elements, the plugin has been thoughtfully crafted to be highly expandable. This adaptability makes it ideal for accommodating future updates in Roblox’s API or extending support to additional Roblox classes.

## Installation
To get started with InstanceToRojo Exporter:
1. Clone the repository to your local machine.
2. In Roblox Studio, open or create a new place.
3. You will find a local script and associated modules in your environment.
4. Select the local script along with all its children components.
5. Right-click and opt for 'Make into a local plugin' to integrate it into your Studio.

## Usage
The plugin becomes operational within Roblox Studio after installation. To utilize it:
1. Select any instance in the Explorer panel.
2. Use the plugin interface to convert the instance into a structured, Rojo-compatible JSON format.

## Supported Classes for Conversion
The plugin is capable of converting the following Roblox classes into JSON:
- AdGui
- BaseScript
- BillboardGui
- BoolValue
- BrickColorValue
- CFrameValue
- CanvasGroup
- Color3Value
- Configuration
- DockWidgetPluginGui
- Folder
- Frame
- GuiBase
- GuiBase2d
- GuiButton
- GuiLabel
- GuiObject
- ImageButton
- ImageLabel
- Instance
- IntValue
- LayerCollector
- LocalScript
- LuaSourceContainer
- ModuleScript
- NumberValue
- ObjectValue
- PluginGui
- QWidgetPluginGui
- RayValue
- ScreenGui
- Script
- ScrollingFrame
- StringValue
- SurfaceGui
- SurfaceGuiBase
- TextBox
- TextButton
- TextLabel
- UIAspectRatioConstraint
- UIBase
- UIComponent
- UIConstraint
- UICorner
- UIFlexItem
- UIGradient
- UIGridLayout
- UIGridStyleLayout
- UILayout
- UIListLayout
- UIPadding
- UIPageLayout
- UIScale
- UISizeConstraint
- UIStroke
- UITableLayout
- UITextSizeConstraint
- ValueBase
- Vector3Value
- VideoFrame
- ViewportFrame

## Supported Value Conversions
This plugin also includes support for converting these value types to Rojo-compatible strings:
- BrickColor
- CFrame
- Color3 and related variants
- ColorSequence
- EnumItem
- NumberSequence
- UDim and UDim2
- Vector classes
- Primitive Lua types (boolean, number, string)
- Generic tables
- Rect Values

## Adding New Class Conversions
To extend the plugin’s functionality with new classes, follow these steps:

### Example for Class Conversion (`AdGui.lua`):
```lua
local SurfaceGuiBaseHandler = require(script.Parent:WaitForChild("SurfaceGuiBase"))

return function (data, instance : AdGui)
    data = SurfaceGuiBaseHandler(data, instance)
    data["$properties"]["AdShape"] = instance.AdShape
    data["$properties"]["EnableVideoAds"] = instance.EnableVideoAds
    data["$properties"]["FallbackImage"] = instance.FallbackImage
    return data
end
```
This example demonstrates extending the `SurfaceGuiBase` class. It begins by inheriting properties of the parent class and then appends specific properties of the `AdGui` class.

## Converting Values into Strings for Rojo
To convert different Roblox value types to a string format that Rojo can interpret:

### Example for Value Conversion (`Color3`):
```lua
return function (value : Color3)
    local colors = table.concat({value.R, value.G, value.B},',')
    return string.format('{"Color3" : [%s]}', colors)
end
```
This function takes a `Color3` value, concatenates its RGB components, and formats them into a JSON-compliant structure.

## How to Contribute
Contributions are highly encouraged to expand the plugin's capabilities:
1. For adding new class conversions, place scripts in `src/external-code/GenerateStructure/Dependencies/Classes`. Ensure script names match the exact Roblox class names.
2. To create new value conversion rules, contribute to `src/external-code/Serialization/Dependencies/Conversions`. Script names should align with the results from `typeof(value)`.

### Useful Websites

For developers working with the InstanceToRojo Exporter or interested in Roblox development in general, the following websites are invaluable resources:

1. **Roblox API Reference**: [https://robloxapi.github.io/ref/](https://robloxapi.github.io/ref/)
   - A comprehensive guide to Roblox class inheritance, providing insights into how different classes are structured and related within Roblox.
   
2. **Rojo Documentation**: [https://rojo.space/docs/v7/properties/](https://rojo.space/docs/v7/properties/)
   - Essential for understanding how Rojo interprets and reads properties. This documentation is crucial for ensuring compatibility with Rojo project files.

3. **Roblox Developer Hub**: [https://create.roblox.com/docs](https://create.roblox.com/docs)
   - The official source for the most up-to-date information on Roblox properties, scripting, and more. A must-visit for anyone looking to stay current with Roblox development practices.

Each of these websites offers unique insights and tools necessary for effective development within the Roblox platform. Whether you are extending the InstanceToRojo Exporter or embarking on your own Roblox project, these resources provide invaluable guidance and information.

### Additional Recommendation: JSON Formatter

For an enhanced experience with the InstanceToRojo Exporter, especially when working with JSON data, I highly recommend using a JSON formatter. This tool is essential for anyone dealing with JSON files regularly, as it can significantly simplify the process of reading and editing JSON structures.

**Benefits of Using a JSON Formatter:**
- **Readability**: It formats the JSON data into a readable and organized structure, making it easier to understand the hierarchy and relationships within the data.
- **Error Detection**: Helps in quickly identifying and correcting syntax errors in JSON files.
- **Edit Efficiency**: Simplifies the process of modifying and adding new data to JSON files.

Using a JSON formatter in conjunction with the InstanceToRojo Exporter will streamline your development workflow, making it more efficient and error-free.

## License
InstanceToRojo Exporter is released under the [GPL 3.0](https://github.com/EmreArapcicUevak/InstanceToRojo-Exporter/blob/main/LICENSE) License, providing freedom for use, modification, and distribution under specified conditions.

## Contact
For additional details, queries, or support, please refer to my [GitHub profile](https://github.com/EmreArapcicUevak).

<img src="https://media1.tenor.com/m/mFxfDDRvsfEAAAAC/frieren-anime.gif" width="700" height="auto" />
