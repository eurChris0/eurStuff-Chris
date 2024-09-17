eurMerge = require('eur/eurMergeArmies')
eurUnitSwap = require('eur/eurSwapUnits')
eurReplenishment = require('eur/eurReplenishment')
eurAddSpoils = require('eur/eurAddSpoils')
eurConfed = require('eur/eurConfed')
eurSupplyLines = require('eur/eurSupplyLines')

if onChangeTurnNum then
    eur_onChangeTurnNum = onChangeTurnNum
    eur_onChangeTurnNum = function(eventData) 
        eur_onChangeTurnNum(eventData)
        eurMerge.getAIarmies();
    end
else
    function onChangeTurnNum(eventData)
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
        eurReplenishment.replenishUnits(eventData.faction)
        eurSupplyLines.rankCost(eventData.faction)
        eurUnitSwap.SwapUnitsOnConfed(eventData.faction)
        eur_onFactionTurnEnd(eventData)
    end
else
    function onFactionTurnEnd(eventData)
        eurReplenishment.replenishUnits(eventData.faction)
        eurSupplyLines.rankCost(eventData.faction)
        eurUnitSwap.SwapUnitsOnConfed(eventData.faction)
    end
end

if onFactionTurnStart then
    eur_onFactionTurnStart = onFactionTurnStart
    eur_onFactionTurnStart = function(eventData) 
        --eurConfed.swapUI(eventData.faction)
        eur_onFactionTurnStart(eventData)
    end
else
    function onFactionTurnStart(eventData)
        --eurConfed.swapUI(eventData.faction)
    end
end
if onPreBattlePanelOpen then
    eur_onPreBattlePanelOpen = onPreBattlePanelOpen
    eur_onPreBattlePanelOpen = function(eventData) 
        eur_onPostBattle(eventData)
        wait(saveLoad, 0.5, eventData.faction, true)
        eurAddSpoils.getBattlePreInfo()
        in_campaign_map = false
    end
else
    function onPreBattlePanelOpen(eventData)
        wait(saveLoad, 0.5, eventData.faction, true)
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
        eur_already_saved = false
        wait(saveLoad, 0.5, eventData.faction, false)
    end
else
    function onPostBattle(eventData)
        wait(eurAddSpoils.postBattleChecks, 0.5, eventData.faction)
        in_campaign_map = true
        eur_already_saved = false
        wait(saveLoad, 0.5, eventData.faction, false)
    end
end

if onScrollOpened then
    eur_onScrollOpened = onScrollOpened
    eur_onScrollOpened = function(eventData) 
        eur_onScrollOpened(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = true
        end
    end
else
    function onScrollOpened(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = true
        end
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
    end
else
    function onScrollClosed(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = false
            show_upgrade_window = false
        end
    end
end

if onPreBattleWithdrawal then
    eur_onPreBattleWithdrawal = onPreBattleWithdrawal
    eur_onPreBattleWithdrawal = function(eventData) 
        eur_onPreBattleWithdrawal(eventData)
        in_campaign_map = true
        eur_already_saved = false
        losses_upkeep = 0
    end
else
    function onPreBattleWithdrawal(eventData)
        in_campaign_map = true
        eur_already_saved = false
        losses_upkeep = 0
    end
end

