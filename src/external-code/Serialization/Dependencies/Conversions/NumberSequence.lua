return function (value : NumberSequence)
    local keypoints = value.Keypoints
    local keypointString = ""
    for i = 1, #keypoints do
        keypointString = keypointString .. string.format('{"time" : %f, "value" : %f, "envelope" : %f}',keypoints[i].Time, keypoints[i].Value, keypoints[i].Envelope)

        if i ~= #keypoints then
            keypointString = keypointString .. ', '
        end
    end

    return string.format('{"NumberSequence" : { "keypoints" : [%s] }}', keypointString)
end
