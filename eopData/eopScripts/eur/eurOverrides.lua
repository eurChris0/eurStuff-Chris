eurMerge = require('eur/eurMergeArmies')
eurUnitSwap = require('eur/eurSwapUnits')
eurReplenishment = require('eur/eurReplenishment')
eurAddSpoils = require('eur/eurAddSpoils')
eurConfed = require('eur/eurConfed')
eurSupplyLines = require('eur/eurSupplyLines')
eurSortStack = require('eur/eurSortStack')
eurMOTD = require('eur/eurMOTD')

if onChangeTurnNum then
    eur_onChangeTurnNum = onChangeTurnNum
    eur_onChangeTurnNum = function(eventData) 
        eur_onChangeTurnNum(eventData)
        if eur_turn_number ~= eur_campaign.turnNumber then
            eur_turn_number = eur_campaign.turnNumber
        end
        eurMerge.getAIarmies();
    end
else
    function onChangeTurnNum(eventData)
        if eur_turn_number ~= eur_campaign.turnNumber then
            eur_turn_number = eur_campaign.turnNumber
        end
        eurMerge.getAIarmies();
    end
end

if onButtonPressed then
    eur_onButtonPressed = onButtonPressed
    eur_onButtonPressed = function(eventData) 
        eur_onButtonPressed(eventData)
        if eventData.resourceDescription == "end_turn" then
            eurMerge.getAIarmies();
        end
    end
else
    function onButtonPressed(eventData)
        if eventData.resourceDescription == "end_turn" then
            eurMerge.getAIarmies();
        end
    end
end

if onGiveSettlement then
    eur_onGiveSettlement = onGiveSettlement
    eur_onGiveSettlement = function(eventData) 
        eur_onGiveSettlement(eventData)
        wait(eurUnitSwap.eurSwapUnitsOnTrade, 1, eventData.settlement)
    end
else
    function onGiveSettlement(eventData)
        wait(eurUnitSwap.eurSwapUnitsOnTrade, 1, eventData.settlement)
    end
end

if onFactionTurnEnd then
    eur_onFactionTurnEnd = onFactionTurnEnd
    eur_onFactionTurnEnd = function(eventData) 
        if options_replen == true then
            eurReplenishment.replenishUnits(eventData.faction)
        end
        if options_poe == true then
            eurSupplyLines.elvenPassing(eventData.faction)
        end
        eurUnitSwap.SwapUnitsOnConfed(eventData.faction)
        if options_sort == true then
            eurSortStack.eurSortStack(eventData.faction)
        end
        eur_onFactionTurnEnd(eventData)
        if eur_event_active then
            mirrorCheck(eventData.faction.factionID)
            traitCheck(eventData.faction.factionID)
            growthCheck(eventData.faction.factionID)
            modifyEDUcheck(eventData.faction.factionID)
            tulkasCheck(eventData.faction.factionID, nil, false)
        end
        if eur_eregion_active then
            eurConfed.eregionStoryCheck(eventData.faction.factionID)
        end
        eurEventActiveCheck(eventData.faction.factionID, eventData.faction.name)
        eurEventUnlockCheck(eventData.faction.factionID)
        genRankCheck(eventData.faction, nil)
        swapHeirLeaderStuffAI(eventData.faction)
        turnImageCheck(eventData.faction)
        genUnlockNotifation(eventData.faction)
    end
else
    function onFactionTurnEnd(eventData)
        if options_replen == true then
            eurReplenishment.replenishUnits(eventData.faction)
        end
        if options_poe == true then
            eurSupplyLines.elvenPassing(eventData.faction)
        end
        eurUnitSwap.SwapUnitsOnConfed(eventData.faction)
        if options_sort == true then
            eurSortStack.eurSortStack(eventData.faction)
        end
        if eur_event_active then
            mirrorCheck(eventData.faction.factionID)
            traitCheck(eventData.faction.factionID)
            growthCheck(eventData.faction.factionID)
            modifyEDUcheck(eventData.faction.factionID)
            tulkasCheck(eventData.faction.factionID, nil, false)
        end
        if eur_eregion_active then
            eurConfed.eregionStoryCheck(eventData.faction.factionID)
        end
        eurEventActiveCheck(eventData.faction.factionID, eventData.faction.name)
        eurEventUnlockCheck(eventData.faction.factionID)
        genRankCheck(eventData.faction, nil)
        swapHeirLeaderStuffAI(eventData.faction)
        turnImageCheck(eventData.faction)
        genUnlockNotifation(eventData.faction)
    end
end

if onFactionTurnStart then
    eur_onFactionTurnStart = onFactionTurnStart
    eur_onFactionTurnStart = function(eventData) 
        --eurConfed.swapUI(eventData.faction)
        eur_onFactionTurnStart(eventData)
        show_events_window = false
        if eventData.faction.isPlayerControlled == 1 then
            if eur_campaign.turnNumber == 0 then
                eurMOTD.campaignLoadedBeta()
            end
        end
    end
else
    function onFactionTurnStart(eventData)
        --eurConfed.swapUI(eventData.faction)
        show_events_window = false
        if eventData.faction.isPlayerControlled == 1 then
            if eur_campaign.turnNumber == 0 then
                eurMOTD.campaignLoadedBeta()
            end
        end
    end
end
if onPreBattlePanelOpen then
    eur_onPreBattlePanelOpen = onPreBattlePanelOpen
    eur_onPreBattlePanelOpen = function(eventData) 
        eur_onPostBattle(eventData)
        if options_prepost_save == true then
            --wait(saveLoad, 0.5, eventData.faction, true)
        end
        eurAddSpoils.getBattlePreInfo()
        in_campaign_map = false
    end
else
    function onPreBattlePanelOpen(eventData)
        if options_prepost_save == true then
            --wait(saveLoad, 0.5, eventData.faction, true)
        end
        eurAddSpoils.getBattlePreInfo()
        in_campaign_map = false
    end
end

if onPostBattle then
    eur_onPostBattle = onPostBattle
    eur_onPostBattle = function(eventData) 
        eur_onPostBattle(eventData)
        wait(eurAddSpoils.postBattleChecks, 0.5, eventData.faction)
        in_campaign_map = true
        wait(restoreSplitUnits, 2, true)
        if options_prepost_save == true then
            eur_already_saved = false
            --wait(saveLoad, 0.5, eventData.faction, false)
            --saveLoad(eventData.faction, false)
        end
    end
else
    function onPostBattle(eventData)
        wait(eurAddSpoils.postBattleChecks, 0.5, eventData.faction)
        in_campaign_map = true
        wait(restoreSplitUnits, 2, true)
        if options_prepost_save == true then
            eur_already_saved = false
            --wait(saveLoad, 0.5, eventData.faction, false)
            --saveLoad(eventData.faction, false)
        end
    end
end

if onScrollOpened then
    eur_onScrollOpened = onScrollOpened
    eur_onScrollOpened = function(eventData) 
        eur_onScrollOpened(eventData)
        show_events_window = false
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = true
        end
        if eventData.resourceDescription == "faction_summary_scroll" then
            show_options_button = true
        end
        if eventData.resourceDescription == "prebattle_scroll" then
            eur_pre_battle = true
        end
        if eventData.resourceDescription == "own_settlement_info_scroll" then
            show_temp_char_stuff = true
            swap_bg_button = true
        end
        print(eventData.resourceDescription)
    end
else
    function onScrollOpened(eventData)
        show_events_window = false
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = true
        end
        if eventData.resourceDescription == "faction_summary_scroll" then
            show_options_button = true
        end
        if eventData.resourceDescription == "prebattle_scroll" then
            eur_pre_battle = true
        end
        if eventData.resourceDescription == "own_settlement_info_scroll" then
            show_temp_char_stuff = true
            swap_bg_button = true
        end
        print(eventData.resourceDescription)
    end
end

if onScrollClosed then
    eur_onScrollClosed = onScrollClosed
    eur_onScrollClosed = function(eventData) 
        eur_onScrollClosed(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = false
            show_upgrade_window = false
        end
        if eventData.resourceDescription == "faction_summary_scroll" then
            show_options_button = false
            show_options_window = false
        end
        if eventData.resourceDescription == "prebattle_scroll" then
            eur_pre_battle = false
            eur_pre_battle_window = false
        end
        if eventData.resourceDescription == "own_settlement_info_scroll" then
            temp_char_stuff = nil
            show_temp_char_stuff = false
            swap_bg_button = false
            swap_bg_window = false
        end
        print(eventData.resourceDescription)
    end
else
    function onScrollClosed(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = false
            show_upgrade_window = false
        end
        if eventData.resourceDescription == "faction_summary_scroll" then
            show_options_button = false
            show_options_window = false
        end
        if eventData.resourceDescription == "prebattle_scroll" then
            eur_pre_battle = false
            eur_pre_battle_window = false
        end
        if eventData.resourceDescription == "own_settlement_info_scroll" then
            temp_char_stuff = nil
            show_temp_char_stuff = false
            swap_bg_button = false
            swap_bg_window = false
        end
        print(eventData.resourceDescription)
    end
end

if onPreBattleWithdrawal then
    eur_onPreBattleWithdrawal = onPreBattleWithdrawal
    eur_onPreBattleWithdrawal = function(eventData) 
        eur_onPreBattleWithdrawal(eventData)
        in_campaign_map = true
        eur_pre_battle = false
        eur_pre_battle_window = false
        restoreSplitUnits(true)
        eur_already_saved = false
        losses_upkeep = 0
    end
else
    function onPreBattleWithdrawal(eventData)
        in_campaign_map = true
        eur_pre_battle = false
        eur_pre_battle_window = false
        restoreSplitUnits(true)
        eur_already_saved = false
        losses_upkeep = 0
    end
end

if onCharacterSelected then
    eur_onCharacterSelected = onCharacterSelected
    eur_onCharacterSelected = function(eventData) 
        eur_onCharacterSelected(eventData)
        if options_sort == true then
            eurSortStack.eurSortOnSelected(eventData.character)
            setBGSize(eventData.faction, nil, nil)
            print(eventData.character.label)
        end
    end
else
    function onCharacterSelected(eventData)
        if options_sort == true then
            eurSortStack.eurSortOnSelected(eventData.character)
            setBGSize(eventData.faction, nil, nil)
            print(eventData.character.label)
        end
    end
end

if onDiplomacyPanelOpen then
    eur_onDiplomacyPanelOpen = onDiplomacyPanelOpen
    eur_onDiplomacyPanelOpen = function(eventData) 
        eur_onDiplomacyPanelOpen(eventData)

    end
else
    function onDiplomacyPanelOpen(eventData)

    end
end

if onUnitTrained then
    eur_onUnitTrained = onUnitTrained
    eur_onUnitTrained = function(eventData) 
        eur_onUnitTrained(eventData)
        if eur_event_active then
            tulkasCheck(eventData.faction.factionID, eventData.playerUnit, true)
        end
    end
else
    function onUnitTrained(eventData)
        if eur_event_active then
            tulkasCheck(eventData.faction.factionID, eventData.playerUnit, true)
        end
    end
end

if onUnitDisbanded then
    eur_onUnitDisbanded = onUnitDisbanded
    eur_onUnitDisbanded = function(eventData) 
        eur_onUnitDisbanded(eventData)
        eurReplenishment.disbandToPool(eventData.playerUnit)
    end
else
    function onUnitDisbanded(eventData)
        eurReplenishment.disbandToPool(eventData.playerUnit)
    end
end

if onTileSeen then
    eur_onTileSeen = onTileSeen
    eur_onTileSeen = function(eventData) 
        eur_onTileSeen(eventData)
        if eurTilecheck then
            eurConfed.tileCheck(eventData.coords.xCoord, eventData.coords.yCoord)
        end
    end
else
    function onTileSeen(eventData)
        if eurTilecheck then
            eurConfed.tileCheck(eventData.faction, eventData.coords.xCoord, eventData.coords.yCoord)
        end
    end
end

if onUngarrisonedFort then
    eur_onUngarrisonedFort = onUngarrisonedFort
    eur_onUngarrisonedFort = function(eventData) 
        eur_onUngarrisonedFort(eventData)
        --eventData.fort:changeOwner(eur_campaign:getFaction("slave"), false)
    end
else
    function onUngarrisonedFort(eventData)
        --eventData.fort:changeOwner(eur_campaign:getFaction("slave"), false)
    end
end

if onPreFactionTurnStart then
    eur_onPreFactionTurnStart = onPreFactionTurnStart
    eur_onPreFactionTurnStart = function(eventData) 
        eur_onPreFactionTurnStart(eventData)
        setBGSize(eventData.faction, nil, nil)
    end
else
    function onPreFactionTurnStart(eventData)
        setBGSize(eventData.faction, nil, nil)
    end
end

if onUnitTrained then
    eur_onUnitTrained = onUnitTrained
    eur_onUnitTrained = function(eventData) 
        eur_onUnitTrained(eventData)
        setBGSize(nil, nil, eventData.playerUnit)
    end
else
    function onUnitTrained(eventData)
        setBGSize(nil, nil, eventData.playerUnit)
    end
end

if onSettlementSelected then
    eur_onSettlementSelected = onSettlementSelected
    eur_onSettlementSelected = function(eventData) 
        eur_onSettlementSelected(eventData)
        setBGSize(eventData.settlement.ownerFaction, nil, nil)
    end
else
    function onSettlementSelected(eventData)
        setBGSize(eventData.settlement.ownerFaction, nil, nil)
    end
end

if onBecomesFactionLeader then
    eur_onBecomesFactionLeader = onBecomesFactionLeader
    eur_onBecomesFactionLeader = function(eventData) 
        eur_onBecomesFactionLeader(eventData)
        swapHierLeaderStuff(eventData.character.character, true)
    end
else
    function onBecomesFactionLeader(eventData)
        swapHierLeaderStuff(eventData.character.character, true)
    end
end

if onBecomesFactionHeir then
    eur_onBecomesFactionHeir = onBecomesFactionHeir
    eur_onBecomesFactionHeir = function(eventData) 
        eur_onBecomesFactionHeir(eventData)
        swapHierLeaderStuff(eventData.character.character, false)
    end
else
    function onBecomesFactionHeir(eventData)
        swapHierLeaderStuff(eventData.character.character, false)
    end
end
