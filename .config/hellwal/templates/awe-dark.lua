-- Dark theme colors
-- ~~~~~~~~~~~~~~~~~

local colors = {}

-- foreground color
colors.foreground      = "#%%foreground%%"

-- backgrounds
colors.bg_color         = "#%%color0.hex%%"
colors.bg_2             = "#%%color1.hex%%"
colors.bg_3             = "#%%color2.hex%%"

-- base green
colors.green   = "#%%color6.hex%%"
colors.green_2 = colors.green .. "99"
colors.green_3 = "#%%color7.hex%%"

-- base red
colors.red     = "#%%color6.hex%%"
colors.red_2    = "#%%color6.hex%%"
colors.red_3 = "#%%color6.hex%%"

-- base black
colors.black   = "#%%color1.hex%%"
colors.ext_white_bg = "#%%foreground.hex%%"

-- accents
colors.accent         = "#%%color8.hex%%"
colors.accent_2       = colors.accent .. "66"
colors.accent_3       = "#%%color9.hex%%"

return colors
