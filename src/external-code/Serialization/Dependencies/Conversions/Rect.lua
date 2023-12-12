return function (value : Rect)
   local rectMin = table.concat({value.Min.X, value.Min.Y}, ',')
   local rectMax = table.concat({value.Max.X, value.Max.Y}, ',')

   return string.format('{"Rect" : [[%s],[%s]]}',rectMin, rectMax)
end