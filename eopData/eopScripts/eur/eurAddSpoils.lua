local spoils = {}

local spoils_loot = 0
local our_num_units = 0

function spoils.postBattleChecks(faction)
    local isExist, counterValue = stratmap.game.getScriptCounter("post_battle_loot")
    if isExist == false then
        stratmap.game.setScriptCounter("post_battle_loot", 0)
    else
        if counterValue ~= 0 then
            if spoils_loot ~= 0 then
                spoils_loot = math.ceil(spoils_loot / counterValue)
                if our_num_units < 11 then
                    our_num_units = (our_num_units/10)
                    spoils_loot = math.ceil(spoils_loot*our_num_units)
                end
                total_spoils_loot = (total_spoils_loot+spoils_loot)
                print("starting post battle check...")
                stratmap.game.callConsole("add_money", tostring(spoils_loot))
                print("adding cash " .. tostring(spoils_loot))
                stratmap.game.historicEvent("spoils_of_war_ai", "Enemy Camp Sacked", "Good tidings! Our men have found the enemy camp and claimed anything of worth. We should be able to make some coin out of this victory!\n\n" .. "Gold taken: " .. tostring(spoils_loot))
                spoils_loot = 0
                stratmap.game.setScriptCounter("post_battle_loot", 0)
            else
                stratmap.game.setScriptCounter("post_battle_loot", 0)
            end
        else
        end
    end
    if eur_playerFactionId == faction.factionID then
        if spoils.getBattleOutcome() then
            total_losses_upkeep = (total_losses_upkeep+losses_upkeep)
        end
    end
end

function spoils.getBattlePreInfo()
    spoils_loot = 0
    our_num_units = 0
    local thisBattle, battleList = eur_gameData.battleStruct, "Function: getBattleData()"
    for i = 1, thisBattle.sidesNum, 1 do
        local thisSide = thisBattle.sides[i]
        if thisSide.armies[1] ~= nil then
            local k = 1
            repeat
                local thisArmy = thisSide.armies[k].army
                if thisArmy ~= nil then
                    if thisArmy.faction.isPlayerControlled == 1 then
                        our_num_units = thisArmy.numOfUnits
                        for i = 0, thisArmy.numOfUnits -1 do
                            local unit = thisArmy:getUnit(i)
                            print(unit.eduEntry.eduType)
                            losses_upkeep = (losses_upkeep+unit.eduEntry.upkeepCost)
                            print("Adding loss upkeep: " .. tostring(losses_upkeep))
                        end
                    end
                    local army_faction = thisArmy.faction
                    local isInWar = eur_campaign:checkDipStance(dipRelType.war, army_faction, eur_player_faction)
                    if thisArmy.faction.isPlayerControlled ~= 1 then
                        if isInWar == true then
                            for j = 0, thisArmy.numOfUnits - 1 do
                                local un = thisArmy:getUnit(j)
                                print(un.eduEntry.eduType)
                                spoils_loot = spoils_loot + un.eduEntry.upkeepCost
                                print("Adding upkeep: " .. tostring(spoils_loot))
                            end
                        end
                    end
                end
                k = k + 1
            until thisSide.armies[k] == nil
        end
    end
end

function spoils.getBattleOutcome()
    local thisBattle, battleList = eur_gameData.battleStruct, "Function: getBattleData()"
    for i = 1, thisBattle.sidesNum, 1 do
        local thisSide = thisBattle.sides[i]
        if thisSide.armies[1] ~= nil then
            local k = 1
            repeat
                local thisArmy = thisSide.armies[k].army
                if thisArmy ~= nil then
                    if thisArmy.faction.isPlayerControlled == 1 then
                        if thisSide.wonBattle == 0 then
                            print("Battle lost")
                            battles_lost = (battles_lost+1)
                            return true
                        end
                    end
                end
                k = k + 1
            until thisSide.armies[k] == nil
        end
    end
end

return spoils