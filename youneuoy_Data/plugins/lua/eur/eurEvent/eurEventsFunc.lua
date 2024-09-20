eur_spawned_characters = 0

tempmirrorTarget = 0
mirrorTarget = ""
mirrorTurnsRemain = 0

traitToAdd = ""
traitTurnsRemain = 0

fert_level = 0
modify_growth = false
growthTurnsRemain = 0
replen_bonus = 0

block_poe_turns = 0

eur_event_active = false
eur_event_activelen = 0

eur_event_min_cooldown = 0
event_number = 99

function eurEventUnlockCheck()
   local campaign = gameDataAll.get().campaignStruct
   local sMap = gameDataAll.get().stratMap;
   local turn_nu = campaign.turnNumber
   if turn_nu > 14 then
      --Mirror of Galadriel
      EUR_EVENTS["ireland"][0].unlocked = true
   elseif turn_nu > 24 then
      --Awakening of the Trees
      EUR_EVENTS["ireland"][2].unlocked = true
      print("unlock1")
   end
   local dol_guldor = campaign:getFaction("poland")
   if dol_guldor.numOfCharacters == 0 then
      EUR_EVENTS["ireland"][0].unlocked = true
      EUR_EVENTS["ireland"][2].unlocked = true
      print("unlock2")
      EUR_EVENTS["ireland"][0].duration = 10
      EUR_EVENTS["ireland"][0].cooldown = 25
   end
   local sett = sMap:getSettlement("North_Khand")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][2].unlocked = true
      EUR_EVENTS["ireland"][2].cooldown = 40
      print("unlock3")
   else
      EUR_EVENTS["ireland"][2].cooldown = 60
   end
   local sett = sMap:getSettlement("Deep_Mirkwood")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][0].unlocked = true
      EUR_EVENTS["ireland"][0].duration = 10
      EUR_EVENTS["ireland"][0].cooldown = 25
   end
end

function eurEventActiveCheck(id, faction_name)
   local faction_id = M2TWEOP.getLocalFactionID()
   if id ~= faction_id then return end
   if eur_event_active then
      if eur_event_activelen > 0 then
         eur_event_activelen = (eur_event_activelen-1)
      else
         eur_event_active = false
      end
   end
   if not EUR_EVENTS[faction_name] then return end
   for i = 0, #EUR_EVENTS[faction_name] do
      if EUR_EVENTS[faction_name][i].active_cooldown > 0 then
         EUR_EVENTS[faction_name][i].active_cooldown = (EUR_EVENTS[faction_name][i].active_cooldown-1)
      end
   end
   if eur_event_min_cooldown > 0 then
      eur_event_min_cooldown = (eur_event_min_cooldown-1)
   end
end

function eurSpawnArmy(faction_name, label, unit, x, y, exp, weapon, armor)
   local x, y = getValidTile(x, y)
   local campaign = gameDataAll.get().campaignStruct
   local turn_nu = tostring(campaign.turnNumber)
   local army = stratmap.game.spawnArmy(
   campaign:getFaction(faction_name),
   "random_name",
   "",
   characterType.named_character,
   label .. turn_nu .. tostring(eur_spawned_characters),
   "",
   x, y,
   18, false, 31,
   M2TWEOPDU.getEduIndexByType(unit), exp, weapon, armor
      )
   eur_spawned_characters = (eur_spawned_characters+1)
   return army
end

function mirrorGaladriel()
   local campaign = gameDataAll.get().campaignStruct
   local sMap = gameDataAll.get().stratMap;
   local faction = campaign:getFaction(mirrorTarget)
   for i = 0, faction.settlementsNum - 1 do
      local sett = faction:getSettlement(i)
      if sett then
         stratmap.game.scriptCommand("reveal_tile", sett.xCoord.." "..sett.yCoord)
         local region = sMap.getRegion(sett.regionID);
         local region_tiles = region.tileCount
         for i = 0, region_tiles -1 do
            local tile = region:getTile(i)
            stratmap.game.scriptCommand("reveal_tile", tile.xCoord.." "..tile.yCoord)
         end
      end
   end
   for i = 0, faction.fortsNum - 1 do
      local fort = faction:getFort(i)
      if fort then
         stratmap.game.scriptCommand("reveal_tile", fort.xCoord.." "..fort.yCoord)
      end
   end
   for i = 0, faction.stacksNum - 1 do
      local stack = faction:getStack(i)
      if stack then
         if stack.leader ~= nil then
            stratmap.game.scriptCommand("reveal_tile", stack.leader.xCoord.." "..stack.leader.yCoord)
         end
      end
   end
   for i = 0, faction.numOfCharacters - 1 do
      local char = faction:getCharacter(i)
      if char then
         stratmap.game.scriptCommand("reveal_tile", char.xCoord.." "..char.yCoord)
      end
   end
end

function mirrorCheck(id)
   local faction_id = M2TWEOP.getLocalFactionID()
   if id ~= faction_id then return end
   if mirrorTarget == "" then return end
   if mirrorTurnsRemain == 0 then 
      mirrorTarget = ""
      stratmap.game.scriptCommand("hide_all_revealed_tiles")
      return end
   mirrorGaladriel()
   mirrorTurnsRemain = (mirrorTurnsRemain-1)
end

function eventAddTrait(faction, bool)
   for i = 0, faction.numOfCharacters - 1 do
      local char = faction:getCharacter(i).namedCharacter
      if char then
         if bool then
            char:addTrait(traitToAdd, 1)
         else
            char:removeTrait(traitToAdd);
         end
      end
   end
end

function traitCheck(id)
   local campaign = gameDataAll.get().campaignStruct
   local faction_id = M2TWEOP.getLocalFactionID()
   local faction = campaign.factionsSortedByID[faction_id + 1]
   if id ~= faction_id then return end
   if traitToAdd == "" then return end
   if traitTurnsRemain == 0 then 
      eventAddTrait(faction, false)
      traitToAdd = ""
   elseif traitTurnsRemain == 8 then
      eventAddTrait(faction, true)
      traitTurnsRemain = (traitTurnsRemain-1)
   else
      traitTurnsRemain = (traitTurnsRemain-1)
   end
end

function increaseGrowth(faction, level)
   for i = 0, faction.settlementsNum - 1 do
      local sett = faction:getSettlement(i)
      if sett then
         sett.baseFertility = level
         sett.settlementStats.population = (sett.settlementStats.population+25)
      end
   end
end

function growthCheck(id)
   local campaign = gameDataAll.get().campaignStruct
   local faction_id = M2TWEOP.getLocalFactionID()
   local faction = campaign.factionsSortedByID[faction_id + 1]
   if id ~= faction_id then return end
   if modify_growth then
      if growthTurnsRemain == 0 then
         increaseGrowth(faction, 1)
         modify_growth = false
      elseif growthTurnsRemain > 0 then
         increaseGrowth(faction, fert_level)
         growthTurnsRemain = (growthTurnsRemain-1)
      end
   end
end