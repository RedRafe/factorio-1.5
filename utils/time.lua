local math_floor = math.floor
local string_format = string.format

local Public = {}

Public.format_hours = function(ticks)
    local seconds = math_floor(ticks / 60)
    local minutes = math_floor(seconds / 60)
    local hours = math_floor(minutes / 60)

    hours = hours % 24
    minutes = minutes % 60
    seconds = seconds % 60

    return string_format(
        '[font=default-semibold]%02d[/font][font=default-small]h[/font] [font=default-semibold]%02d[/font][font=default-small]m[/font] [font=default-semibold]%02d[/font][font=default-small]s[/font]',
        hours,
        minutes,
        seconds
    )
end

Public.format_minutes = function(ticks)
    local seconds = math_floor(ticks / 60)
    local minutes = math_floor(seconds / 60)

    minutes = minutes % 60
    seconds = seconds % 60

    return string_format(
        '[font=default-semibold]%02d[/font][font=default-small]m[/font] [font=default-semibold]%02d[/font][font=default-small]s[/font]',
        minutes,
        seconds
    )
end

Public.format_short = function(ticks)
    local seconds = math_floor(ticks / 60)
    local minutes = math_floor(seconds / 60)

    minutes = minutes % 60
    seconds = seconds % 60

    return string_format(
        '[font=default-semibold]%02d:%02d[/font]',
        minutes,
        seconds
    )
end

return Public