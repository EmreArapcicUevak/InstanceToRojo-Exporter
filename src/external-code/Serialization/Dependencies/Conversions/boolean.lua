return function(value)
    return string.format("{\"Bool\": %s}", value and "true" or "false")
end