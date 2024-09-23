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

function eurEventUnlockCheck(id)
   if id ~= eur_playerFactionId then return end
   local dol_guldor = eur_campaign:getFaction("poland")
   if not poe_end_condition then
      if eur_player_faction.name == "ireland" then
         if dol_guldor.numOfCharacters == 0 then
            poe_end_condition = true
         end
      elseif eur_player_faction.name == "saxons" then
         if checkCounter("jewel_guild_rebuilt") then
            poe_end_condition = true
         end
      elseif eur_player_faction.name == "mongols" then
      elseif eur_player_faction.name == "denmark" then
      end
   end
   if eur_turn_number > 14 then
      --Mirror of Galadriel
      print("unlock check3")
      EUR_EVENTS["ireland"][0].unlocked = true
      EUR_EVENTS["mongols"][0].unlocked = true
      EUR_EVENTS["saxons"][0].unlocked = true
      EUR_EVENTS["denmark"][0].unlocked = true
   elseif eur_turn_number > 24 then
      --Awakening of the Trees
      EUR_EVENTS["ireland"][2].unlocked = true
      EUR_EVENTS["mongols"][2].unlocked = true
      EUR_EVENTS["saxons"][2].unlocked = true
      EUR_EVENTS["denmark"][2].unlocked = true
   end
   if dol_guldor.numOfCharacters == 0 then
      EUR_EVENTS["ireland"][0].unlocked = true
      EUR_EVENTS["ireland"][2].unlocked = true
      EUR_EVENTS["ireland"][0].duration = 10
      EUR_EVENTS["ireland"][0].cooldown = 25
   end
   local sett = eur_sMap:getSettlement("North_Khand")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][2].unlocked = true
      EUR_EVENTS["ireland"][2].cooldown = 40
   else
      EUR_EVENTS["ireland"][2].cooldown = 60
   end
   local sett = eur_sMap:getSettlement("Deep_Mirkwood")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][0].unlocked = true
      EUR_EVENTS["ireland"][0].duration = 10
      EUR_EVENTS["ireland"][0].cooldown = 25
   end
end

function eurEventActiveCheck(id, faction_name)
   if id ~= eur_playerFactionId then return end
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
   local army = stratmap.game.spawnArmy(
   eur_campaign:getFaction(faction_name),
   "random_name",
   "",
   characterType.named_character,
   label .. tostring(eur_turn_number) .. tostring(eur_spawned_characters),
   "",
   x, y,
   18, false, 31,
   M2TWEOPDU.getEduIndexByType(unit), exp, weapon, armor
      )
   eur_spawned_characters = (eur_spawned_characters+1)
   return army
end

function mirrorGaladriel()
   local faction = eur_campaign:getFaction(mirrorTarget)
   for i = 0, faction.settlementsNum - 1 do
      local sett = faction:getSettlement(i)
      if sett then
         --stratmap.game.scriptCommand("reveal_tile", sett.xCoord.." "..sett.yCoord)
         local region = eur_sMap.getRegion(sett.regionID);
         local region_tiles = region.tileCount
         for i = 0, region_tiles -1 do
            if (i % 2 == 0) then
               local tile = region:getTile(i)
               if checkTileEmpty(tile.xCoord, tile.yCoord) then 
                  stratmap.game.scriptCommand("reveal_tile", tile.xCoord.." "..tile.yCoord)
               end
            end
         end
      end
   end
   --[[
   for i = 0, faction.fortsNum - 1 do
      local fort = faction:getFort(i)
      if fort then
         stratmap.game.scriptCommand("reveal_tile", fort.xCoord.." "..fort.yCoord)
      end
   end
   ]]
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
   if id ~= eur_playerFactionId then return end
   if mirrorTarget == "" then return end
   if mirrorTurnsRemain == 0 then 
      stratmap.game.scriptCommand("hide_all_revealed_tiles")
      mirrorTarget = ""
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
   if id ~= eur_playerFactionId then return end
   if traitToAdd == "" then return end
   if traitTurnsRemain == 0 then 
      eventAddTrait(eur_player_faction, false)
      traitToAdd = ""
   elseif traitTurnsRemain == 8 then
      eventAddTrait(eur_player_faction, true)
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
   if id ~= eur_playerFactionId then return end
   if modify_growth then
      if growthTurnsRemain == 0 then
         increaseGrowth(eur_player_faction, 1)
         modify_growth = false
      elseif growthTurnsRemain > 0 then
         increaseGrowth(eur_player_faction, fert_level)
         growthTurnsRemain = (growthTurnsRemain-1)
      end
   end
end