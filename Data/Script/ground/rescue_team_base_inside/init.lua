--[[
    init.lua
    Created: 03/20/2023 23:38:49
    Description: Autogenerated script file for the map rescue_team_base_inside.
]]--
-- Commonly included lua functions and data
require 'common'

-- Package name
local rescue_team_base_inside = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = MapStrings['SomeStringName']
local MapStrings = {}

-------------------------------
-- Map Callbacks
-------------------------------
---rescue_team_base_inside.Init(map)
--Engine callback function
function rescue_team_base_inside.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  MapStrings = COMMON.AutoLoadLocalizedStrings()

end

---rescue_team_base_inside.Enter(map)
--Engine callback function
function rescue_team_base_inside.Enter(map)

  GAME:FadeIn(20)

end

---rescue_team_base_inside.Exit(map)
--Engine callback function
function rescue_team_base_inside.Exit(map)


end

---rescue_team_base_inside.Update(map)
--Engine callback function
function rescue_team_base_inside.Update(map)


end

---rescue_team_base_inside.GameSave(map)
--Engine callback function
function rescue_team_base_inside.GameSave(map)


end

---rescue_team_base_inside.GameLoad(map)
--Engine callback function
function rescue_team_base_inside.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------

function rescue_team_base_inside.South_Exit_Touch(obj, activator)
  GAME:FadeOut(false, 20)
  GAME:EnterGroundMap("rescue_team_base", "Base_Entrance")
end

return rescue_team_base_inside

