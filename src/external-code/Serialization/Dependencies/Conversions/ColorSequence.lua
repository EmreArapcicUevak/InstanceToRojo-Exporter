return function (value : ColorSequence)
    local keypoints = value.Keypoints
    local keypointString = ""
    for i = 1, #keypoints do
        local colorTbl = {keypoints[i].Value.R,keypoints[i].Value.G,keypoints[i].Value.B}
        keypointString = keypointString .. string.format('{"time" : %f, "color" : [%s]}',keypoints[i].Time, table.concat(colorTbl,','))

        if i ~= #keypoints then
            keypointString = keypointString .. ', '
        end
    end

    return string.format('{"ColorSequence" : { "keypoints" : [%s]}}', keypointString)
end