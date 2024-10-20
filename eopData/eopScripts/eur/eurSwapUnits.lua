local swap_units = {}

local CONFED_FACTIONS = {
    ["ireland"] = {
        counter = "elven_union",
        value = 1,
        run_once = "elven_confed_units",
        old = {"Woodland Scouts","Woodland Spearmen","Woodland Warriors",},
        new = {"Lorien Archers","Lorien Warders","Lorien Sentries",},
    },
    ["mongols"] = {
        counter = "elven_union",
        value = 1,
        run_once = "elven_confed_units",
        old = {"Lorien Archers","Lorien Warders","Lorien Sentries",},
        new = {"Woodland Scouts","Woodland Spearmen","Woodland Warriors",},
    },
}

local SWAP_GARRISON = {
    ["milan"] = {
        new = {"Eorling Spearmen", "Eorling Spearmen", "Eorling Archers"}
    },
    ["sicily"] = {
        new = {"Gondor Militia", "Gondor Militia", "Gondor Militia Archers"}
    },
    ["turks"] = {
        new = {"Dunedain Wardens", "Dunedain Wardens", "Woodland Hunters"}
    },
    ["russia"] = {
        new = {"Belegaer Footmen", "Belegaer Footmen", "Belegaer Archers"}
    },
    ["scotland"] = {
        new = {"Dalian Swordsmen", "Dalian Swordsmen", "Dalian Longbowmen"}
    },
    ["byzantium"] = {
        new = {"Thorn Bladesmen", "Thorn Bladesmen", "Thorn Crossbowmen"}
    },
    ["timurids"] = {
        new = {"Woodman Defenders", "Woodman Defenders", "Vale Archers"}
    },
    ["portugal"] = {
        new = {"Thralls", "Thralls", "Thralls"}
    },
    ["aztecs"] = {
        new = {"Clan Spearmen", "Clan Spearmen", "Clan Hunters"}
    },
    ["teutonic_order"] = {
        new = {"Faolan Borderguard", "Faolan Borderguard", "Faolan Borderguard"}
    },
    ["spain"] = {
        new = {"Haradrim Spearmen", "Haradrim Spearmen", "Haradrim Archers"}
    },
    ["khand"] = {
        new = {"Steppe Tribesmen", "Steppe Tribesmen", "Steppe Tribesmen"}
    },
    ["venice"] = {
        new = {"Rhunnic Spears", "Rhunnic Spears", "Rhunnic Bowmen"}
    },
    ["norway"] = {
        new = {"Khazad Sentries", "Khazad Sentries", "Khazad Sentries"}
    },
    ["hungary"] = {
        new = {"Ered Luin Militia", "Ered Luin Pikemen", "Ered Luin Scouts"}
    },
    ["moors"] = {
        new = {"Erebor Infantry", "Erebor Infantry", "Erebor Axethrowers"}
    },
    ["mongols"] = {
        new = {"Woodland Spearmen", "Woodland Spearmen", "Woodland Scouts"}
    },
    ["ireland"] = {
        new = {"Lorien Warders", "Lorien Warders", "Lorien Archers"}
    },
    ["denmark"] = {
        new = {"Lindar Guards", "Lindar Guards", "Lindar Bowmen"}
    },
    ["england"] = {
        new = {"Orc Band", "Orc Band", "Orc Band"}
    },
    ["poland"] = {
        new = {"Dol Guldur Host", "Dol Guldur Host", "Dol Guldur Scouts"}
    },
    ["hre"] = {
        new = {"Goblin Band", "Goblin Band", "Goblin Archers"}
    },
    ["gundabad"] = {
        new = {"Snow-Orc Spearmen", "Snow-Orc Spearmen", "Snow-Orc Scouts"}
    },
    ["france"] = {
        new = {"Uruk-hai Raiders", "Uruk-hai Raiders", "Uruk-hai Archers"}
    },
    ["slave"] = {
        new = {"Bandits", "Bandits", "Bandits"}
    },
}

function swap_units.eurSwapUnitsOnTrade(settlement)
    local faction_name = settlement.ownerFaction.name
    if not SWAP_GARRISON[faction_name] then return end
    if settlement.army then
        for j = 0, settlement.army.numOfUnits - 1 do
            local rand = math.random(1, 3)
            local un = settlement.army:getUnit(j)
            local new_edu = M2TWEOPDU.getEduEntryByType(SWAP_GARRISON[faction_name].new[rand])
            if new_edu then
                un.eduEntry = new_edu
                un.soldierCountStratMap = un.soldierCountStratMapMax
            end
        end
    else
        local army = stratmap.game.createArmyInSettlement(settlement)
        local rand1 = math.random(1, 3)
        local rand2 = math.random(1, 3)
        army:createUnit(SWAP_GARRISON[faction_name].new[rand1], 0, 0, 0)
        army:createUnit(SWAP_GARRISON[faction_name].new[rand2], 0, 0, 0)
    end
end

function swap_units.SwapUnitsOnConfed(faction)
    local uiList = ""
    local fac_name = faction.name
    if not CONFED_FACTIONS[fac_name] then return end
    local isExist, counterValue = stratmap.game.getScriptCounter(CONFED_FACTIONS[fac_name].counter)
    if counterValue ~= CONFED_FACTIONS[fac_name].value then return end
    if not checkCounter(CONFED_FACTIONS[fac_name].run_once) then
        stratmap.game.setScriptCounter(CONFED_FACTIONS[fac_name].run_once, 1)
        local unitSize = getUnitSizeMult()
        for i = 0, faction.stacksNum - 1 do
            local army = faction:getStack(i)
            for j = 0, army.numOfUnits - 1 do
                local un = army:getUnit(j)
                if un.eduEntry ~= nil then
                    for x = 1, #CONFED_FACTIONS[fac_name].old do
                        if un.eduEntry.eduType == CONFED_FACTIONS[fac_name].old[x] then
                            local eduEntry = M2TWEOPDU.getEduEntryByType(CONFED_FACTIONS[fac_name].new[x])
                                if eduEntry ~= nil then
                                uiList =
                                    uiList ..
                                    "\n" ..
                                        "Unit: " .. un.eduEntry.eduType .. " replaced by " .. CONFED_FACTIONS[fac_name].new[x]
                                un.eduEntry = M2TWEOPDU.getEduEntryByType(CONFED_FACTIONS[fac_name].new[x])
                                un.soldierCountStratMap = math.min(un.soldierCountStratMap, un.eduEntry.soldierCount * unitSize)
                            end
                        end
                    end
                end
            end
        end
        if uiList ~= "\n" then
            stratmap.game.historicEvent("settlement_taken", "Units Retrained", "Now that our realms have united, our militia forces have undergone retaining and refitting. \n" .. uiList)
        end
    end
end
--[[
---@param eventData eventTrigger 
function onSettlementTurnStart(eventData)
    local settlement = eventData.settlement
    eurUnitSwap.killGarrison(settlement, nil)
    if settlement.siegesNum ~= 0 then
        eurUnitSwap.spawnGarrisons(settlement)
    end
end


---@param eventData eventTrigger 
function onSettlementTurnEnd(eventData)
    local settlement = eventData.settlement
    if settlement.siegesNum == 0 then
        eurUnitSwap.killGarrison(settlement, nil)
    end
end

]]
---@param settlement settlementStruct 
function swap_units.spawnGarrisons(settlement)
    local tag = 'Settlement Garrison'
    local rand1 = math.random(1, 3)
    local rand2 = math.random(1, 3)
    if not SWAP_GARRISON[settlement.ownerFaction.name] then return end
    swap_units.addGarrisonUnit(SWAP_GARRISON[settlement.ownerFaction.name].new[rand1],tag,settlement,1,1,1,1);
    swap_units.addGarrisonUnit(SWAP_GARRISON[settlement.ownerFaction.name].new[rand2],tag,settlement,1,1,1,1);
    --example for other faciton
    --if settlement.ownerFaction.name == 'otherfaction' then
    --    local tag = 'otherfaction Garrison'
    --    addGarrisonUnit('otherfaction Militia',tag,settlement,3,1,1,1);
    --    addGarrisonUnit('otherfaction Heavy Infantry',tag,settlement,2,1,1,1);
    --end
end

---comment
---@param unitname string
---@param tag string
---@param settlement settlementStruct
---@param amount integer
---@param exp integer
---@param arm integer
---@param wplvl integer
function swap_units.addGarrisonUnit(unitname, tag, settlement, amount, exp, arm, wplvl)
    local garrison = settlement.army;
    if garrison == nil then
        garrison = stratmap.game.createArmyInSettlement(settlement);
        local newUnit = garrison:createUnit(unitname,exp,arm,wplvl);
        if newUnit then
            newUnit.alias = tag
            --newUnit.movePoints = 0;
        end
    else
        local settarmyNum = garrison.numOfUnits;
        if settarmyNum < 15 then
            local newUnit = garrison:createUnit(unitname,exp,arm,wplvl);
            if newUnit then
                newUnit.alias = tag
                --newUnit.movePoints = 0;
            end
		end
	end
end

function swap_units.killGarrison(settlement, faction)
    if settlement then
        if settlement.army ~= nil then
            local garrison = settlement.army;
            local garrisonstrenght = garrison.numOfUnits;
            local hitlist = {}
            for j = 0, garrisonstrenght-1 do
                local thisUnit = garrison:getUnit(j);
                if string.find(thisUnit.alias, "Garrison")~=nil then
                    table.insert(hitlist, thisUnit);
                end
            end
            for k = 1, #hitlist do
                hitlist[k]:kill();
            end
        end
    end
    if faction then
        for i = 0, faction.stacksNum - 1 do
            local stack = faction:getStack(i)
            if not stack.findInSettlement then
                for j = 0, stack.numOfUnits -1 do
                    local un = stack:getUnit(j)
                    if string.find(un.alias, "Garrison") ~= nil then
                        un:kill()
                    end
                end
            end
        end
    end
end

return swap_units