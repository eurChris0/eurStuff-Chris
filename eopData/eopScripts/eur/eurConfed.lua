local eurConfed_func = {}

local lindon_eregion_seen_title = "Ancient Eregion Ruin Rediscovered"
local lindon_eregion_seen_text = "\n"..
[[
]]
local lindon_eregion_captured_sett = "Ancient Eregion Ruin taken"
local lindon_eregion_captured_text = "\n"..
[[
]]

local imladris_eregion_seen_title = "Ancient Eregion Ruin Rediscovered"
local imladris_eregion_seen_text = "\n"..
[[
]]
local imladris_eregion_captured_sett = "Ancient Eregion Ruin taken"
local imladris_eregion_captured_text = "\n"..
[[
]]


function eurConfed_func.lindon_invasion_0()
    local army = eurSpawnArmy("hre", "random_name", "lindon_invasion_0", "", false, 18, "Trolls", eur_sMap:getSettlement("Mithlond").xCoord, eur_sMap:getSettlement("Mithlond").yCoord, 2, 1, 1)
    if army then
        army:createUnit("Trolls",3,0,0);
        army:createUnit("Trolls",3,0,0);
        if army.leader ~= nil then
            char = army.leader.namedCharacter
            if char ~= nil then
                char:addTrait("ElvenRace", 1)
                char:addTrait("Nandor", 1)
                char:addTrait("BattleChivalryGood", 1)
                char:addTrait("Brave", 1)
                char:addTrait("GoodAttacker", 1)
                char:addTrait("GoodCommander", 1)
                char:addTrait("Loyal", 2)
                char:addTrait("Upright", 2)
                char:addTrait("LoyaltyStarter", 2)
                char:addTrait("PietyStarter", 2)
            end
        end
        army:siegeSettlement(eur_sMap:getSettlement("Mithlond"), true)
    end
end

function eurConfed_func.imladris_invasion_0()

end

local CONFED_EVENTS = {
    ["denmark"] = {
        [0] = {x=81, y=382, event="reached_ost_en_noldor", title=lindon_eregion_seen_title, text=lindon_eregion_seen_text},
        [1] = {sett="Eregion", event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
        [3] = {
            [0] = eurConfed_func.lindon_invasion_0,
            [1] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
            [2] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
            [3] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
            [4] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
        }
    },
    ["saxons"] = {
        [0] = {x=214, y=311, event="reached_ost_in_edhil", title=imladris_eregion_seen_title, text=imladris_eregion_seen_text},
        [1] = {sett="Eregion" ,event="captured_ost_in_edhil", title=imladris_eregion_captured_sett, text=imladris_eregion_captured_text},
        [3] = {
            [0] = eurConfed_func.lindon_invasion_0,
            [1] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
            [2] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
            [3] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
            [4] = {event="captured_ost_en_noldor", title=lindon_eregion_captured_sett, text=lindon_eregion_captured_text},
        }
    },
}

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

function eurConfed_func.tileCheck(faction, x, y)
    if CONFED_EVENTS[eur_localFactionName] == nil then return end
    if eregion_realms_start == 1 then
        if faction == eur_player_faction then
            --if x == CONFED_EVENTS[eur_localFactionName][0].x and y == CONFED_EVENTS[eur_localFactionName][0].x then
            local sett = eur_sMap:getSettlement(CONFED_EVENTS[eur_localFactionName][1].sett)
            if x == sett.xCoord and y == sett.yCoord then
                stratmap.game.historicEvent(CONFED_EVENTS[eur_localFactionName][0].event, CONFED_EVENTS[eur_localFactionName][0].title, CONFED_EVENTS[eur_localFactionName][0].text)
                eurTilecheck = false
                eregion_realms_start = 2
            end
        end
    end
end

function eurConfed_func.eregionStoryCheck(id)
    if id ~= eur_playerFactionId then return end
    if eregion_realms_start == 2 then
        local sett = eur_sMap:getSettlement(CONFED_EVENTS[eur_localFactionName][1].sett)
        if sett.ownerFaction.name == eur_localFactionName then
            stratmap.game.historicEvent(CONFED_EVENTS[eur_localFactionName][1].event, CONFED_EVENTS[eur_localFactionName][1].title, CONFED_EVENTS[eur_localFactionName][1].text)
            eregion_realms_sett_taken = eur_campaign.turnNumber
            eregion_realms_start = 3
        end
    elseif eregion_realms_start == 3 then
        if eur_campaign.turnNumber == (eregion_realms_sett_taken+10) then
            --invasion1
        elseif eur_campaign.turnNumber == (eregion_realms_sett_taken+13) then
            --invasion2
        elseif eur_campaign.turnNumber == (eregion_realms_sett_taken+15) then
            --invasion3
        elseif eur_campaign.turnNumber == (eregion_realms_sett_taken+16) then
            CONFED_EVENTS[eur_localFactionName][3][0]()
            eregion_realms_start = 4
        end
    elseif eregion_realms_start == 4 then
        if eur_campaign.turnNumber == (eregion_realms_sett_taken+50) then
            eregion_maernil_choice_wait = eur_campaign.turnNumber
            --increase unrest
            --historic event maernil
        elseif eur_campaign.turnNumber == (eregion_maernil_choice_wait+10) then
            --eregion choice
        end
    elseif eregion_realms_start == 10 then
            --check eregion defeated
            --check saxons/denmark alive
            --historic event offer confed
        elseif eregion_realms_start == 20 then
            --check saxons/denmark defeated
            --check throne built
    end
end

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
    if CONFED_FACTIONS[faction.name] then
        if eur_player_faction == faction then
            if eur_campaign.turnNumber == 0 then 
                if file_exists(modPath..'\\data\\ui\\'..eur_localculture..'\\interface\\new_ui.txt') then
                    os.execute('Cd /d "'..modPath..'\\extra\\" & '..CONFED_FACTIONS[faction.name].old)
                    wait(eurResetDisplay, 0.5)
                end
                confed_ui_updated = false
            else
                if confed_ui_updated == false then
                    if not file_exists(modPath..'\\data\\ui\\'..eur_localculture..'\\interface\\new_ui.txt') then
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
        if eur_player_faction == faction then
            if file_exists(modPath..'\\data\\ui\\'..eur_localculture..'\\interface\\new_ui.txt') then
                os.execute('Cd /d "'..modPath..'\\extra\\" & '..eur_localculture..'_ui_reset.bat')
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