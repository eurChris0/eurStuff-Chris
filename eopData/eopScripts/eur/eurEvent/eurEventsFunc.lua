eur_spawned_characters = 0

tempgim_units_target = 0
tempgimtarget = 0
tempcharTarget = 0
tempmirrorTarget = 0

mirrorTarget = ""
mirrorTurnsRemain = 0

traitToAdd = ""
traitTurnsRemain = 0

fert_level = 0
modify_growth = false
growthTurnsRemain = 0
replen_bonus = 0

edumodTurnsRemain = 0
edumodActive = false

edu_modified = false

tulkasTurnsRemain = 0
tulkasActive = false

lindon_0_count = 0
lindon_0_bu_added = false

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
      EUR_EVENTS["ireland"][0].unlocked = true
      --stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS["ireland"][0].name.." Unlocked", EUR_EVENTS["ireland"][0].desc)
      EUR_EVENTS["mongols"][0].unlocked = true
      EUR_EVENTS["saxons"][0].unlocked = true
      EUR_EVENTS["denmark"][0].unlocked = true
   elseif eur_turn_number > 24 then
      --Awakening of the Trees
      EUR_EVENTS["ireland"][2].unlocked = true
      --stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS["ireland"][2].name.." Unlocked", EUR_EVENTS["ireland"][2].desc)
      EUR_EVENTS["mongols"][2].unlocked = true
      EUR_EVENTS["saxons"][2].unlocked = true
      EUR_EVENTS["denmark"][2].unlocked = true
   end
   if dol_guldor.numOfCharacters == 0 then
      EUR_EVENTS["ireland"][0].unlocked = true
      --stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS["ireland"][0].name.." Unlocked", EUR_EVENTS["ireland"][0].desc)
      EUR_EVENTS["ireland"][2].unlocked = true
      --stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS["ireland"][2].name.." Unlocked", EUR_EVENTS["ireland"][2].desc)
      EUR_EVENTS["ireland"][0].duration = 10
      EUR_EVENTS["ireland"][0].cooldown = 25
   end
   local sett = eur_sMap:getSettlement("North_Khand")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][2].unlocked = true
      --stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS["ireland"][2].name.." Unlocked", EUR_EVENTS["ireland"][2].desc)
      EUR_EVENTS["ireland"][2].cooldown = 40
   else
      EUR_EVENTS["ireland"][2].cooldown = 60
   end
   local sett = eur_sMap:getSettlement("Deep_Mirkwood")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][0].unlocked = true
      --stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS["ireland"][0].name.." Unlocked", EUR_EVENTS["ireland"][0].desc)
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
      if EUR_EVENTS[faction_name][i].active_cooldown == 1 then
         EUR_EVENTS[faction_name][i].active_cooldown = (EUR_EVENTS[faction_name][i].active_cooldown-1)
         stratmap.game.historicEvent("crusade_succeeded", EUR_EVENTS[faction_name][i].name.." Unlocked", EUR_EVENTS[faction_name][i].desc)
      elseif EUR_EVENTS[faction_name][i].active_cooldown > 0 then
         EUR_EVENTS[faction_name][i].active_cooldown = (EUR_EVENTS[faction_name][i].active_cooldown-1)
      end
      if EUR_EVENTS[faction_name][i].active_duration == 1 then
         EUR_EVENTS[faction_name][i].active_duration = (EUR_EVENTS[faction_name][i].active_duration-1)
         EUR_EVENTS[faction_name][i].unlocked = true
      elseif EUR_EVENTS[faction_name][i].active_duration > 0 then
         EUR_EVENTS[faction_name][i].active_duration = (EUR_EVENTS[faction_name][i].active_duration-1)
      end
   end
   if eur_event_min_cooldown > 0 then
      eur_event_min_cooldown = (eur_event_min_cooldown-1)
   end
   if block_poe_turns > 0 then
      block_poe_turns = (block_poe_turns-1)
   end
end

function eurSpawnArmy(faction_name, name, label, custom_portrait, family, age, unit, x, y, exp, weapon, armor)
   local x, y = getValidTile(x, y)
   local army = stratmap.game.spawnArmy(
   eur_campaign:getFaction(faction_name),
   name,
   "",
   characterType.named_character,
   label .. tostring(eur_turn_number) .. tostring(eur_spawned_characters),
   custom_portrait,
   x, y,
   age, family, 31,
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

function modifyEDU(bool, ammo, locked, cost, time, range)
   if bool then
      for i = 0, 1500 do
         local eduEntry = M2TWEOPDU.getEduEntry(i)
         if eduEntry ~= nil then
            if eduEntry:hasOwnership(eur_playerFactionId) then
               if ammo > 0 then
                  eduEntry.primaryStats.ammo = math.ceil(UNIT_ORIGINAL[eduEntry.eduType].ammo*ammo)
               end
               if locked > 0 then
                  eduEntry.moraleLocked = 1
               end
               if cost > 0 then
                  eduEntry.recruitCost = math.ceil(UNIT_ORIGINAL[eduEntry.eduType].recruitCost*cost)
               end
               if time > 0 then
                  if eduEntry.recruitTime > time then
                     eduEntry.recruitTime = (UNIT_ORIGINAL[eduEntry.eduType].recruitTime-time)
                  end
               end
               if range > 0 then
                  eduEntry.primaryStats.range = (UNIT_ORIGINAL[eduEntry.eduType].range+range)
               end
               edu_modified = true
            end
         end
      end
   else
      for i = 0, 1500 do
         local eduEntry = M2TWEOPDU.getEduEntry(i)
         if eduEntry ~= nil then
            if eduEntry:hasOwnership(eur_playerFactionId) then
               eduEntry.primaryStats.ammo = UNIT_ORIGINAL[eduEntry.eduType].ammo
               eduEntry.moraleLocked = UNIT_ORIGINAL[eduEntry.eduType].moraleLocked
               eduEntry.recruitCost = UNIT_ORIGINAL[eduEntry.eduType].recruitCost
               eduEntry.recruitTime = UNIT_ORIGINAL[eduEntry.eduType].recruitTime
               eduEntry.primaryStats.range = UNIT_ORIGINAL[eduEntry.eduType].range
               edu_modified = false
            end
         end
      end
   end
end

function modifyEDUcheck(id)
   if id ~= eur_playerFactionId then return end
   if edumodActive then
      if edumodTurnsRemain == 0 then
         modifyEDU(false, 0, 0, 0, 0, 0)
         edumodActive = false
      elseif edumodTurnsRemain > 0 then
         if not edu_modified then
            modifyEDU(true, 1.25, 0, 0.65, 1, 0)
         end
         edumodTurnsRemain = (edumodTurnsRemain-1)
      end
   end
   if tulkasActive then
      if tulkasTurnsRemain == 0 then
         modifyEDU(false, 0, 0, 0, 0, 0)
         tulkasActive = false
      elseif tulkasTurnsRemain > 0 then
         if not edu_modified then
            modifyEDU(true, 0, 0, 0.4, 1, 0)
         end
         tulkasTurnsRemain = (tulkasTurnsRemain-1)
      end
   end
end

function tulkasCheck(id, unit, new)
   math.randomseed(os.time())
   if id ~= eur_playerFactionId then return end
   if tulkasActive then
      if new then
         if unit.exp < 7 then
            unit:setParams((unit.exp+3),unit.armourLVL,unit.weaponLVL);
         end
      else
         if tulkasTurnsRemain > 3 then
            for i = 0, eur_player_faction.armiesNum - 1 do
               local stack = eur_player_faction:getArmy(i)
               if stack then
                  for i = 0, stack.numOfUnits - 1 do
                     local unit = stack:getUnit(i)
                     if math.random(1,100) > 50 then
                        if unit.exp < 9 then
                           unit:setParams((unit.exp+1),unit.armourLVL,unit.weaponLVL);
                        end
                     end
                  end
               end
            end
         end
      end
   end
end

function ulmoAdd()
   local building = EDB.getBuildingByName("port")
   local bonus = 15
   if lindon_0_count > 0 then
       for i = 1, lindon_0_count do
           for j = 0, 4 do
               bu = building:getBuildingLevel(j)
               bu:addCapability(buildingCapability.income_bonus, (bonus*(j+1)), true, "factions { saxons, }")
               if i < 6 then
                  bu:addCapability(buildingCapability.population_growth_bonus, 1, true, "factions { saxons, }")
               end
               if lindon_0_count == 2 then
                  bu:addRecruitPool(M2TWEOPDU.getEduIndexByType("Lindar Mariners"), 1, 0.1, 2, 1, "factions { saxons, } and region_religion elven 33 and event_counter mithlond_controlled 1")
               end
               if lindon_0_count == 4 then
                   if i == 4 then
                       bu:addRecruitPool(M2TWEOPDU.getEduIndexByType("Mithlond Nobles"), 1, 0.1, 2, 1, "factions { saxons, } and region_religion elven 80 and hidden_resource Lindon")
                   end
               end
           end
       end
       lindon_0_bu_added = true
   end
end
