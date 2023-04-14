--[[
    init.lua
    Created: 04/02/2023 11:14:50
    Description: Autogenerated script file for the map large_woods.
]]--
-- Commonly included lua functions and data
require 'common'

-- Package name
local large_woods = {}

-------------------------------
-- Zone Callbacks
-------------------------------
---large_woods.Init(zone)
--Engine callback function
function large_woods.Init(zone)


end

---large_woods.EnterSegment(zone, rescuing, segmentID, mapID)
--Engine callback function
function large_woods.EnterSegment(zone, rescuing, segmentID, mapID)


end

---large_woods.ExitSegment(zone, result, rescue, segmentID, mapID)
--Engine callback function
function large_woods.ExitSegment(zone, result, rescue, segmentID, mapID)

  if result ~= RogueEssence.Data.GameProgress.ResultType.Cleared then
    COMMON.EndDungeonDay(result, "tutorial_zone", -1, 0, 0)
  else
    if segmentID == 0 then
      GAME:EnterZone('large_woods', -1, 0, 0)
	else
	  --COMMON.EndDungeonDay(RogueEssence.Data.GameProgress.ResultType.Cleared, "tutorial_zone", -1, 0, 0)
	  SV.large_lake.BossComplete = true
	  GAME:EnterZone('large_woods', -1, 0, 0)
	end
  end
end

---large_woods.Rescued(zone, name, mail)
--Engine callback function
function large_woods.Rescued(zone, name, mail)


end

return large_woods

