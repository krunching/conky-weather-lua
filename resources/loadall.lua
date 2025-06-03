-- loadall.lua
-- by @wim66
-- june 8 2024

-- Set the path to the scripts foder
package.path = "~/conky_colors/resources/?.lua"
-- ###################################

require 'display'
require 'background'

function conky_main()
     conky_draw_background()
     conky_draw_weather()

end
