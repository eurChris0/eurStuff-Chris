eurMerge = require('eur/eurMergeArmies')
eurUnitSwap = require('eur/eurSwapUnits')
eurReplenishment = require('eur/eurReplenishment')
eurAddSpoils = require('eur/eurAddSpoils')
eurSortStack = require('eur/eurSortStack')

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
        if options_replen == true then
            eurReplenishment.replenishUnits(eventData.faction)
        end
        if options_poe == true then
            
        end
        eurUnitSwap.SwapUnitsOnConfed(eventData.faction)
        if options_sort == true then
            eurSortStack.eurSortStack(eventData.faction)
        end
        eur_onFactionTurnEnd(eventData)
    end
else
    function onFactionTurnEnd(eventData)
        if options_replen == true then
            eurReplenishment.replenishUnits(eventData.faction)
        end
        if options_poe == true then
            
        end
        eurUnitSwap.SwapUnitsOnConfed(eventData.faction)
        if options_sort == true then
            eurSortStack.eurSortStack(eventData.faction)
        end
    end
end

if onFactionTurnStart then
    eur_onFactionTurnStart = onFactionTurnStart
    eur_onFactionTurnStart = function(eventData) 
        --eurConfed.swapUI(eventData.faction)
        eur_onFactionTurnStart(eventData)
        if eventData.faction.isPlayerControlled == 1 then
            local campaign = gameDataAll.get().campaignStruct
            if campaign.turnNumber == 0 then
                
            end
        end
    end
else
    function onFactionTurnStart(eventData)
        --eurConfed.swapUI(eventData.faction)
        if eventData.faction.isPlayerControlled == 1 then
            local campaign = gameDataAll.get().campaignStruct
            if campaign.turnNumber == 0 then
                
            end
        end
    end
end
if onPreBattlePanelOpen then
    eur_onPreBattlePanelOpen = onPreBattlePanelOpen
    eur_onPreBattlePanelOpen = function(eventData) 
        eur_onPostBattle(eventData)
        if options_prepost_save == true then
            
        end
        eurAddSpoils.getBattlePreInfo()
        in_campaign_map = false
    end
else
    function onPreBattlePanelOpen(eventData)
        if options_prepost_save == true then
            
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
        if options_prepost_save == true then
            eur_already_saved = false

        end
    end
else
    function onPostBattle(eventData)
        wait(eurAddSpoils.postBattleChecks, 0.5, eventData.faction)
        in_campaign_map = true
        if options_prepost_save == true then
            eur_already_saved = false

        end
    end
end

if onScrollOpened then
    eur_onScrollOpened = onScrollOpened
    eur_onScrollOpened = function(eventData) 
        eur_onScrollOpened(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = true
        end
        if eventData.resourceDescription == "faction_summary_scroll" then
            show_options_button = true
        end
        if eventData.resourceDescription == "post_battle_scroll" then
            if options_prepost_save == true then
                eur_already_saved = false

            end
        end
        --print(eventData.resourceDescription)
    end
else
    function onScrollOpened(eventData)
        if eventData.resourceDescription == "unit_info_scroll" then
            show_upgrade_button = true
        end
        if eventData.resourceDescription == "faction_summary_scroll" then
            show_options_button = true
        end
        if eventData.resourceDescription == "post_battle_scroll" then
            if options_prepost_save == true then
                eur_already_saved = false

            end
        end
        --print(eventData.resourceDescription)
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
        --print(eventData.resourceDescription)
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
        --print(eventData.resourceDescription)
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

if onCharacterSelected then
    eur_onCharacterSelected = onCharacterSelected
    eur_onCharacterSelected = function(eventData) 
        eur_onCharacterSelected(eventData)
        if options_sort == true then
            eurSortStack.eurSortOnSelected(eventData.character)
        end
    end
else
    function onCharacterSelected(eventData)
        if options_sort == true then
            eurSortStack.eurSortOnSelected(eventData.character)
        end
    end
end