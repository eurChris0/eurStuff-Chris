local supplyLines_func = {}

local FACTION_RANK = {}

local DECLINE_POP = {
    low = 0,
    high = 0,
}

local sett_levels = {
    [0] = 100,
    [1] = 150,
    [2] = 200,
    [3] = 250,
    [4] = 300,
    [5] = 350,
}

local ELVEN_FACTIONS = {
    ["saxons"] = true,
    ["denmark"] = true,
    ["mongols"] = true,
    ["ireland"] = true,
}

local rank = 15

function supplyLines_func.supplyCost(faction)
    local playerFactionId = M2TWEOP.getLocalFactionID()
    local player_faction = campaign.factionsSortedByID[playerFactionId + 1]
    if faction == player_faction then
        --calc cost and deduct
    end
end

function supplyLines_func.elvenPassing(faction)
    if not ELVEN_FACTIONS[faction.name] then return end
    if checkCounter("elvesPassing") then return end
    FACTION_RANK = {}
    math.randomseed(os.time())
    local random_turn = math.random(1,2)
    local campaign = gameDataAll.get().campaignStruct
    local turnNu = campaign.turnNumber
    if (turnNu % 2 == 0) then
        local playerFactionId = M2TWEOP.getLocalFactionID()
        local player_faction = campaign.factionsSortedByID[playerFactionId + 1]
        local sett_nu = player_faction.settlementsNum
        local uiList = ""
        local event_pic = "action_stealth"
        local pop_declined = false
        local pop_decline_title = "Passing of the Elves"
        local pop_decline_desc = "The Elves are leaving these shores never to return, our population has declined and income lost as a result. \n"
        pop_decline_desc_append = "\n\nSnow White, Snow White, O Lady clear\nO Queen beyond the Western Seas\nO Light to us that wander there\nAmid the world of woven trees\n"
        if faction == player_faction then
            local percent = 0
            local facNum = stratmap.game.getFactionsCount();
            for i = 0, (facNum-1) do
                ranked_faction = stratmap.game.getFaction(i);
                table.insert(FACTION_RANK, ranked_faction:getFactionRanking(turnNu).totalRankingScore)
            end
            table.sort(FACTION_RANK)
            reverseTable(FACTION_RANK)
            rank = tablePosition(FACTION_RANK, player_faction:getFactionRanking(turnNu).totalRankingScore)
            if rank > sett_nu then
                og_rank = rank
                rank = (rank-sett_nu)
                if rank < 5 and og_rank > 10 then
                    rank = 4
                end
            end
            if rank > 11 then
                percent = 70
                DECLINE_POP.low, DECLINE_POP.high = 110, 190
                pop_decline_desc_prepend = "\nBut hope remains, through our bravery and deeds perhaps we can convince our brethren to stay.\n"
            elseif rank > 8 then
                percent = 60
                DECLINE_POP.low, DECLINE_POP.high = 80, 160
                pop_decline_desc_prepend = "\nBut hope remains, through our bravery and deeds perhaps we can convince our brethren to stay.\n"
            elseif rank > 5 then
                percent = 50
                DECLINE_POP.low, DECLINE_POP.high = 50, 140
                pop_decline_desc_prepend = "\nDespite this loss, many of our people are choosing to stay and rebuild, placing their faith in a new Elven realm.\n"
            elseif rank > 2 then
                percent = 40
                DECLINE_POP.low, DECLINE_POP.high = 30, 100
                pop_decline_desc_prepend = "\nDespite this loss, many of our people are choosing to stay and rebuild, placing their faith in a new Elven realm.\n"
            else
                percent = 0
                DECLINE_POP.low, DECLINE_POP.high = 0, 0
                stratmap.game.setScriptCounter("elvesPassing", 1)
                player_faction.kingsPurse = (player_faction.kingsPurse+2500)
                stratmap.game.callConsole("add_money", "10000")
                stratmap.game.historicEvent("council_accept", "Elven Resplendence", "Elven decline has halted and our people no longer seek for Valinor.\n\nA sum of 10,000 gold coins has been made available to help our people rebuild")
            end
            if battles_lost > 0 
            and total_losses_upkeep > 2500 then
                percent = (percent+10)
                DECLINE_POP.low, DECLINE_POP.high = DECLINE_POP.low+10, DECLINE_POP.high+40
                event_pic = "faction_troubled"
                pop_decline_desc_prepend = "\nOur recent losses have disheartened our people, more Elves have left this season as a result.\n"
            elseif total_spoils_loot > 2500 then
                percent = (percent-20)
                event_pic = "council_accept"
                DECLINE_POP.low, DECLINE_POP.high = DECLINE_POP.low-20, DECLINE_POP.high-70
                pop_decline_desc_prepend = "\nOur recent victories given us renewed hope and as a result fewer Elves have left this season.\n"
            elseif total_spoils_loot > 1500 then
                percent = (percent-10)
                event_pic = "council_accept"
                DECLINE_POP.low, DECLINE_POP.high = DECLINE_POP.low-10, DECLINE_POP.high-40
                pop_decline_desc_prepend = "\nOur recent victories given us renewed hope and as a result fewer Elves have left this season.\n"
            end
            for i = 0, (sett_nu-1) do
                local sett = player_faction:getSettlement(i)
                local bu_num = sett.buildingsNum
                if bu_num > 0 then
                    for i = 0, bu_num - 1 do
                        local building = sett:getBuilding(i)
                        if building:getType() == "grove" then
                            if building.level == 0 then
                                percent = math.ceil(percent/1.5)
                                DECLINE_POP.low, DECLINE_POP.high = DECLINE_POP.low-10, DECLINE_POP.high-30
                            else
                                percent = math.ceil(percent/2)
                                DECLINE_POP.low, DECLINE_POP.high = DECLINE_POP.low-20, DECLINE_POP.high-60
                            end
                        end
                    end
                end
                if DECLINE_POP.low < 1 then
                    DECLINE_POP.low = 5
                end
                if DECLINE_POP.high < 1 then
                    DECLINE_POP.high = 10
                end
                print("Rank: " .. tostring(rank))
                print("Original Rank: " .. tostring(og_rank))
                print("Total Spoils: " .. tostring(total_spoils_loot))
                print("Battles lost: " .. tostring(battles_lost))
                print("losses upkeep: " .. tostring(total_losses_upkeep))
                print("percent chance: " .. tostring(percent))
                if percent >= math.random(1,100) then
                    local randomNumber = math.random(DECLINE_POP.low,DECLINE_POP.high)
                    local elven_culture = sett:getReligion(5)
                    local randomNumber = math.ceil((randomNumber*elven_culture))
                    if (sett.settlementStats.population-randomNumber) >= 200 then
                        if sett.settlementStats.population < 1001 then
                            local pop_multi = (sett.settlementStats.population/1500)
                            randomNumber = math.ceil(randomNumber*pop_multi)
                        elseif sett.settlementStats.population < 1801 then
                            local pop_multi = (sett.settlementStats.population/1100)
                            randomNumber = math.ceil(randomNumber*pop_multi)
                        else
                            local pop_multi = (sett.settlementStats.population/900)
                            randomNumber = math.ceil(randomNumber*pop_multi)
                        end
                        sett.settlementStats.population = (sett.settlementStats.population-randomNumber)
                        local income = (sett.settlementStats.TotalIncomeWithoutAdmin + sett.settlementStats.AdminIncome +
                        sett.settlementStats.BuildingsIncome -
                        sett.settlementStats.CorruptionExpense -
                        sett.settlementStats.RecruitmentExpense -
                        sett.settlementStats.DiplomaticExpense -
                        sett.settlementStats.EntertainmentExpense -
                        sett.settlementStats.DevastationExpense)
                        local deducted_income = math.ceil(income*(math.random(0.1,0.2)))
                        local deducted_income = math.ceil((deducted_income*elven_culture))
                        if deducted_income > sett_levels[sett.level] then
                            deducted_income = sett_levels[sett.level]
                        end
                        print("Settlement: " .. sett.localizedName)
                        print("Deducting pop: " .. tostring(randomNumber))
                        print("Deducting income: " .. tostring(deducted_income))
                        stratmap.game.callConsole("add_money", "-" .. tostring(deducted_income))
                        uiList =
                        uiList ..
                        "\n" ..
                            sett.localizedName..": "..tostring(randomNumber).." Elves, "..tostring(deducted_income).." Gold."
                        pop_declined = true
                    end
                end
            end
            if pop_declined then
                if uiList ~= "\n" then
                    stratmap.game.historicEvent(event_pic, pop_decline_title, pop_decline_desc .. pop_decline_desc_prepend .. uiList .. pop_decline_desc_append)
                end
            end
            total_spoils_loot = 0
            total_losses_upkeep = 0
            battles_lost = 0
        end
    end
end

return supplyLines_func