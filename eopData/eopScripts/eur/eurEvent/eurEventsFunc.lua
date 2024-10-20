eur_spawned_characters = 0

tempgim_units_target = 0
tempgimtarget = 0
tempcharTarget = 0
tempmirrorTarget = 0

mirrorTarget = ""
mirrorTurnsRemain = 0

tempeyeTarget = 0
tempeyeTarget_region = 0

eyeTarget = 0

tempanorTarget = 0
anorTarget = ""

temporchordeTarget = 0
temporchordeTarget_cost = 0

traitToAdd = ""
traitTurnsRemain = 0

mengood_0_pop = 100
mengood_0_cul = 0.1

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

local invalid_horde_cat = {
   "ship",
   "siege",
}

function eurEventUnlockCheck(id)
   if id ~= eur_playerFactionId then return end
   local dol_guldor = eur_campaign:getFaction("poland")
   if not poe_end_condition then
      if eur_player_faction.name == "ireland" then
         if dol_guldor.numOfCharacters == 0 then
            poe_end_condition = true
            EUR_EVENTS["ireland"][0].duration = 10
            EUR_EVENTS["ireland"][0].cooldown = 25
            EUR_EVENTS["mongols"][0].duration = 10
            EUR_EVENTS["mongols"][0].cooldown = 25
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
      --
   elseif eur_turn_number > 49 then
      EUR_EVENTS["denmark"][2].unlocked = true
      stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["denmark"][2].name.." available", "\n\n"..EUR_EVENTS["denmark"][2].desc)
   end
   if dol_guldor.numOfCharacters == 0 then
      EUR_EVENTS["ireland"][0].unlocked = true
      stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["ireland"][0].name.." available", "\n\n"..EUR_EVENTS["ireland"][0].desc)
      EUR_EVENTS["ireland"][2].unlocked = true
      stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["ireland"][2].name.." available", "\n\n"..EUR_EVENTS["ireland"][2].desc)
      EUR_EVENTS["ireland"][0].duration = 10
      EUR_EVENTS["ireland"][0].cooldown = 25
   end
   local sett = eur_sMap:getSettlement("North_Khand")
   if sett.ownerFaction.name == "ireland" then
      EUR_EVENTS["ireland"][2].unlocked = true
      stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["ireland"][2].name.." available", "\n\n"..EUR_EVENTS["ireland"][2].desc)
      EUR_EVENTS["ireland"][2].cooldown = 40
   else
      EUR_EVENTS["ireland"][2].cooldown = 60
   end
   local sett = eur_sMap:getSettlement("Deep_Mirkwood")
   if sett.ownerFaction.name == "ireland" then
      if not EUR_EVENTS["ireland"][0].unlocked then
         EUR_EVENTS["ireland"][0].unlocked = true
         stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["mongols"][0].name.." available", "\n\n"..EUR_EVENTS["ireland"][0].desc)
      end
   elseif sett.ownerFaction.name == "mongols" then
      if not EUR_EVENTS["mongols"][0].unlocked then
         if checkCounter("elven_union") then
            EUR_EVENTS["mongols"][0].unlocked = true
            stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["mongols"][0].name.." available", "\n\n"..EUR_EVENTS["mongols"][0].desc)
         end
      end
   end
   local sett = eur_sMap:getSettlement("Eregion")
   if sett.ownerFaction.name == "saxons" then
      EUR_EVENTS["saxons"][0].unlocked = true
      stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS["saxons"][0].name.." available", "\n\n"..EUR_EVENTS["saxons"][0].desc)
   end
end

function eurEventActiveCheck(id, faction_name)
   if id ~= eur_playerFactionId then return end
   if eur_event_active then
      if eur_event_activelen == 1 then
         eur_event_activelen = (eur_event_activelen-1)
         stratmap.game.historicEvent("faction_prosperous", "Event Cooldown Expired", "")
      elseif eur_event_activelen > 1 then
         eur_event_activelen = (eur_event_activelen-1)
      else
         eur_event_active = false
      end
   end
   if not EUR_EVENTS[faction_name] then return end
   for i = 0, #EUR_EVENTS[faction_name] do
      if EUR_EVENTS[faction_name][i].active_cooldown == 1 then
         EUR_EVENTS[faction_name][i].active_cooldown = (EUR_EVENTS[faction_name][i].active_cooldown-1)
         stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS[faction_name][i].name" available", "\n\n"..EUR_EVENTS[faction_name][i].desc)
      elseif EUR_EVENTS[faction_name][i].active_cooldown > 0 then
         EUR_EVENTS[faction_name][i].active_cooldown = (EUR_EVENTS[faction_name][i].active_cooldown-1)
      end
      if EUR_EVENTS[faction_name][i].active_duration == 1 then
         EUR_EVENTS[faction_name][i].active_duration = (EUR_EVENTS[faction_name][i].active_duration-1)
         EUR_EVENTS[faction_name][i].unlocked = true
         stratmap.game.historicEvent("faction_prosperous", EUR_EVENTS[faction_name][i].name.." expired", "\n\n"..EUR_EVENTS[faction_name][i].desc)
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
               bu:addCapability(buildingCapability.income_bonus, (bonus*(j+1)), true, "factions { denmark, }")
               if i < 6 then
                  bu:addCapability(buildingCapability.population_growth_bonus, 1, true, "factions { denmark, }")
               end
               if lindon_0_count == 2 then
                  bu:addRecruitPool(M2TWEOPDU.getEduIndexByType("Lindar Mariners"), 1, 0.1, 2, 1, "factions { denmark, } and region_religion elven 33 and event_counter mithlond_controlled 1")
               end
               if lindon_0_count == 4 then
                   if i == 4 then
                       bu:addRecruitPool(M2TWEOPDU.getEduIndexByType("Mithlond Nobles"), 1, 0.1, 2, 1, "factions { denmark, } and region_religion elven 80 and hidden_resource Lindon")
                   end
               end
           end
       end
       lindon_0_bu_added = true
   end
end

function miningdwarvesAdd()
   local building = EDB.getBuildingByName("hinterland_mines")
   local bonus = 25
   if dwarven_0_count > 0 then
       for i = 1, dwarven_0_count do
           for j = 0, 2 do
               bu = building:getBuildingLevel(j)
               bu:addCapability(buildingCapability.income_bonus, (bonus*(j+1)), true, "factions { moors, hungary, norway, }")
               if i < 6 then
                  bu:addCapability(buildingCapability.population_growth_bonus, 1, true, "factions { moors, hungary, norway, }")
               end
           end
       end
       dwarven_0_bu_added = true
   end
   for i = 0, eur_player_faction.numOfCharacters - 1 do
      local char = eur_player_faction:getCharacter(i)
      local random = math.random(1, 100)
      if char:getTypeID() == 7 then
         if random > 50 then
            if char.characterRecord:getTraitLevel("MiningSkill") == 0 then
               char.characterRecord:addTrait("MiningSkill", 1)
               stratmap.game.historicEvent("faction_prosperous", "Mining Trait Expanded", "\n\n"..char.characterRecord.localizedDisplayName)
            elseif char.characterRecord:getTraitLevel("MiningSkill") < 2 then
               char.characterRecord:addTraitPoints("MiningSkill", 1)
               stratmap.game.historicEvent("faction_prosperous", "Mining Trait Expanded", "\n\n"..char.characterRecord.localizedDisplayName)
            end
         end
      end
   end
end

function greatEye(reset)
   if eyeTarget == 0 then return end
   if reset then
      stratmap.game.scriptCommand("hide_all_revealed_tiles")
   end
   local region = eur_sMap.getRegion(eyeTarget);
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

function eyeCheck(id)
   if id ~= eur_playerFactionId then return end
   if eyeTarget == 0 then return end
   greatEye(false)
end

function orcHorde(sett, cost)
   local list = {}
   local limit = cost/5
   local orig_cost = cost
   for i = 0, sett.recruitmentCapabilityNum -1 do
      local capability = sett:getRecruitmentCapability(i).eduIndex
      local eduEntry = M2TWEOPDU.getEduEntry(capability)
      if eduEntry then
         print(eduEntry.eduType)
         if not tableContains(invalid_horde_cat, eduEntry.category) then
            local rand = math.random(1, 3)
            for i = 1, rand do
               if cost > eduEntry.recruitCost then
                  if limit == 3000 then
                     if eduEntry.recruitCost < limit then
                        if eduEntry.recruitCost > 1200 then
                           if #list < 19 then
                              table.insert(list, eduEntry.eduType)
                              cost = cost-eduEntry.recruitCost
                           end
                        else
                           if #list < 19 then
                              table.insert(list, eduEntry.eduType)
                              cost = cost-eduEntry.recruitCost
                           end
                        end
                     end
                  elseif limit == 2000 then
                     if eduEntry.recruitCost < limit then
                        if eduEntry.recruitCost > 800 then
                           if #list < 19 then
                              table.insert(list, eduEntry.eduType)
                              cost = cost-eduEntry.recruitCost
                           end
                        else
                           if #list < 19 then
                              table.insert(list, eduEntry.eduType)
                              cost = cost-eduEntry.recruitCost
                           end
                        end
                     end
                  else
                     if eduEntry.recruitCost < limit then
                        if #list < 19 then
                           table.insert(list, eduEntry.eduType)
                           cost = cost-eduEntry.recruitCost
                        end
                     end
                  end
               end
            end
         end
      end
   end
   local army = eurSpawnArmy(eur_player_faction.name, "random_name", "orchorde_", "", false, 18, default_general_units[eur_player_faction.name].old, sett.xCoord, sett.yCoord, 3, 0, 0)
   if army then
      shuffle(list)
      for i = 1, #list do
         local unit = army:createUnit(list[i], 2, 0, 0)
         if unit.soldierCountStratMap*1.5 > 300 then
            unit.soldierCountStratMap = 300
         else
            unit.soldierCountStratMap = unit.soldierCountStratMap*1.5
         end
      end
   end
   local new_set = (sett.settlementStats.population-(orig_cost/10))
   print("pop red"..tostring(sett.settlementStats.population-(orig_cost/10)))
   sett.settlementStats.population = new_set
   stratmap.game.callConsole("add_money", "-" .. tostring(cost))
   print("refunded"..tostring(cost))
end

function anorStone()
   local anor_target_faction = eur_campaign:getFaction(anorTarget)
   if not anor_target_faction then return end
   for i = 0, anor_target_faction.stacksNum - 1 do
      local stack = anor_target_faction:getStack(i)
      if stack then
         if stack.leader ~= nil then
            stratmap.game.scriptCommand("reveal_tile", stack.leader.xCoord.." "..stack.leader.yCoord)
         end
      end
   end
   for i = 0, anor_target_faction.numOfCharacters - 1 do
      local char = anor_target_faction:getCharacter(i)
      if char then
         if not char.settlement or not char.fort then
            stratmap.game.scriptCommand("reveal_tile", char.xCoord.." "..char.yCoord)
         end
      end
   end
end

function anorStoneCheck(id)
   if id ~= eur_playerFactionId then return end
   if anorTarget == "" then return end
   if anorTurnsRemain == 1 then 
      anorTurnsRemain = (anorTurnsRemain-1)
      stratmap.game.scriptCommand("hide_all_revealed_tiles")
      anorTarget = ""
   elseif anorTurnsRemain > 1 then
      stratmap.game.scriptCommand("hide_all_revealed_tiles")
      anorStone()
      anorTurnsRemain = (anorTurnsRemain-1)
   end
end

function populationCultureBonus(pop, culture, settlement)
   if not settlement then return end
   settlement.settlementStats.population = settlement.settlementStats.population+pop
   local rel_level = settlement:getReligion(eur_player_faction.religion)
   if rel_level+culture > 1 then
      settlement:setReligion(eur_player_faction.religion, 1)
   else
      settlement:setReligion(eur_player_faction.religion, (rel_level+culture))
   end
end

function mengood_0_check(id)
   if id ~= eur_playerFactionId then return end
   if not mengood_0_sett then return end
   if mengoodTurnsRemain == 1 then
      mengoodTurnsRemain = mengoodTurnsRemain-1
      populationCultureBonus(mengood_0_pop, mengood_0_cul, mengood_0_sett)
      mengood_0_sett = nil
   elseif mengoodTurnsRemain > 1 then
      populationCultureBonus(mengood_0_pop, mengood_0_cul, mengood_0_sett)
      mengoodTurnsRemain = mengoodTurnsRemain-1
   end
end