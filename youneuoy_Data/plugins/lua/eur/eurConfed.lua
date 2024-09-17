local eurConfed_func = {}

local confed_ui_updated = false

local CONFED_FACTIONS = {
    ["saxons"] = {
        old = 'greek_ui_reset.bat',
        new = 'eregion_ui_swap.bat',
        counter = "dummy_counter",
    },
    ["other"] = {
        old = '.bat',
        new = '.bat',
        counter = "dummy_counter",
    },
    ["other2"] = {
        old = '.bat',
        new = '.bat',
        counter = "dummy_counter",
    },
}

function eurConfed_func.makeLeader(char_label, faction)
    local namedChar = getnamedCharbyLabel(char_label)
    namedChar.isFamily = true
    namedChar.status = 1
    faction.leader = namedChar
end

function eurConfed_func.makeHeir(char_label, faction, only_heir)
    if not only_heir then
        only_heir = false
    end
    local namedChar = getnamedCharbyLabel(char_label)
    namedChar.isFamily = true
    namedChar.status = 2
    namedChar:setAsHeir(only_heir)
    faction.heir = namedChar
end

function eurConfed_func.makeGeneral(char_label, faction)
    local namedChar = getnamedCharbyLabel(char_label)
    namedChar.status = 0
end

function eurConfed_func.swapUI(faction) 
    local modPath = M2TWEOP.getModPath();
    local campaign = gameDataAll.get().campaignStruct
    local playerFactionId = M2TWEOP.getLocalFactionID()
    local player_faction = campaign.factionsSortedByID[playerFactionId + 1]
    if CONFED_FACTIONS[faction.name] then
        if player_faction == faction then
            culture = M2TWEOP.getCultureName(player_faction.cultureID);
            if campaign.turnNumber == 0 then 
                if file_exists(modPath..'\\data\\ui\\'..culture..'\\interface\\new_ui.txt') then
                    os.execute('Cd /d "'..modPath..'\\extra\\" & '..CONFED_FACTIONS[faction.name].old)
                    wait(eurResetDisplay, 0.5)
                end
                confed_ui_updated = false
            else
                if confed_ui_updated == false then
                    if not file_exists(modPath..'\\data\\ui\\'..culture..'\\interface\\new_ui.txt') then
                        if not checkCounter(CONFED_FACTIONS[faction.name].counter) then
                            os.execute('Cd /d "'..modPath..'\\extra\\" & '..CONFED_FACTIONS[faction.name].new)
                            wait(eurResetDisplay, 0.5)
                            confed_ui_updated = true 
                        end
                    else
                        confed_ui_updated = true
                    end
                end
            end
        end
    else
        if player_faction == faction then
            culture = M2TWEOP.getCultureName(player_faction.cultureID);
            if file_exists(modPath..'\\data\\ui\\'..culture..'\\interface\\new_ui.txt') then
                os.execute('Cd /d "'..modPath..'\\extra\\" & '..culture..'_ui_reset.bat')
                wait(eurResetDisplay, 0.5)
                confed_ui_updated = false
            end
        end
    end
end


function dummy()
    if eregion_ui_updated == false then
        if campaign.turnNumber > 0 then
            if not file_exists(modPath..'\\data\\ui\\greek\\interface\\eregion_ui.txt') then
                if checkCounter(counter) then
                if faction.name == "saxons" then
                    local imladris=campaign:getSettlementByName("Imladris")
                    if imladris.ownerFaction.name == "saxons" then
                        if faction.settlementsNum >= 20 then
                            faction.localizedName = "Realm of the Ñoldor"
                        elseif faction.settlementsNum >= 10 then
                            faction.localizedName = "High King of Imladris"
                        elseif faction.settlementsNum >= 5 then
                            faction.localizedName = "Remnamts of Eregion"
                        elseif faction.settlementsNum >= 1 then
                            faction.localizedName = "Realm of the Ñoldor"
                        end
                    else
                        faction.localizedName = "Noldor in Exile"
                    end
                    --faction.facStrat.primaryColorRed = 220
                    --faction.facStrat.primaryColorGreen = 220
                    --faction.facStrat.primaryColorBlue = 220
                    --faction.facStrat.secondaryColorRed = 0
                    --faction.facStrat.secondaryColorGreen = 0
                    --faction.facStrat.secondaryColorBlue = 0
                    --faction.facStrat.logoIndex = 185
                    --faction.facStrat.smallLogoIndex = 205
                    --faction.facStrat.standardIndex = 5
                    --faction.facStrat.religionID = 2
                    --faction.religion = 2
                    gildor = getnamedCharbyLabel("gildor_1")
                    elrond = getnamedCharbyLabel("elrond_1")
                    elladan = getnamedCharbyLabel("elladan_1")
                    elrohir = getnamedCharbyLabel("elrohir_1")
                    if gildor then 
                        gildor.isFamily = true
                        gildor.status = 5
                        faction.leader = gildor
                        gildor:addTrait("FactionLeader", 1)
                        gildor.character:setCharacterModel("glorfin");
                        if elrond then
                            elrond:removeTrait("FactionLeaderCustom")
                            elrond.status = 0
                            elrond.character:setCharacterModel("elves_general");
                        end
                    end
                    --faction.heir = 
                    --os.execute('Cd /d "'..modPath..'\\extra\\" & eregion_ui_swap.bat')
                    --wait(eurResetDisplay, 0.5)
                    --eregion_ui_updated = true
                end
                if faction.name == "slave" then
                    faction.localizedName = "rebels"
                end
                if faction.name == "sicily" then
                    faction.localizedName = "rebels2"
                end
            end
        --else
            --eregion_ui_updated = true
        --end
    --end
end
end
end
end

function dummy2(eventData)
    M2TWEOP.restartLua();
    sett = eventData.settlement
    print(sett.populationSize)
    local campaign = gameDataAll.get().campaignStruct
    local playerFactionId = M2TWEOP.getLocalFactionID()
    local faction = campaign.factionsSortedByID[playerFactionId + 1]
    print(faction.factionID)
    faction.facStrat.logoIndex = 312
    building = EDB.getBuildingByName("market")
    EDB.setBuildingLocalizedName(building,"newe", 0, faction.factionID);
    EDB.setBuildingLocalizedDescr(building,"newe2", 0, faction.factionID);
    EDB.setBuildingLocalizedDescrShort(building,"newe3", 0, faction.factionID);
    EDB.addBuildingCapability(building, 0, buildingCapability.income_bonus, 500, true)

    --faction.cultureID = 3
    --faction.religion = 2
    --print(campaign.turnNumber)
    print(M2TWEOP.getCultureName(faction.cultureID))
    --modPath=M2TWEOP.getModPath();

    --faction.kingsPurse = faction.kingsPurse+2500
    --sett.settlementStats.population = sett.settlementStats.population-110
    --stratmap.game.historicEvent("action_stealth", "the pop went down", "we lost 100 guys")
end

return eurConfed_func