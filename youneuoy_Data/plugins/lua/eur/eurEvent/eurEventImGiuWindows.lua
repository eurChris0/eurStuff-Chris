function lorien_0(faction_name, bool)
    local mirrortemplist_fact = {}
    local mirrortemplist_fact_0 = {}
    local mirrortemplist_sett = {}
    local nu_fact = eur_campaign.numberOfFactions
    for i = 0, nu_fact-5 do
        mirrorfaction = stratmap.game.getFaction(i)
        if mirrorfaction then
            if mirrorfaction.numOfCharacters > 0 then
                table.insert(mirrortemplist_fact, mirrorfaction.localizedName)
                table.insert(mirrortemplist_fact_0, mirrorfaction.name)
            end
        end
    end
    for i = 0, mirrorfaction.settlementsNum - 1 do
        local sett = mirrorfaction:getSettlement(i)
        if sett then
            table.insert(mirrortemplist_sett, sett.localizedName)
        end
    end
    if bool then
        ImGui.Text("Reveals all of the target's land, armies and agent.")
        ImGui.NewLine()
        ImGui.Text("Select Faction: ")
        tempmirrorTarget, clicked = ImGui.Combo("", tempmirrorTarget, mirrortemplist_fact, #mirrortemplist_fact, #mirrortemplist_fact+1)
    else
        mirrorTarget = mirrortemplist_fact_0[tempmirrorTarget+1]
        mirrorTurnsRemain = EUR_EVENTS[faction_name][event_number].duration
        mirrorGaladriel()
        eur_event_active = true
        if EUR_EVENTS[faction_name][event_number].duration ~= nil then
            if eur_event_activelen < EUR_EVENTS[faction_name][event_number].duration then
                eur_event_activelen = EUR_EVENTS[faction_name][event_number].duration
            end
        end
        EUR_EVENTS[faction_name][event_number].active_cooldown = EUR_EVENTS[faction_name][event_number].cooldown
    end
end

function lorien_1(faction_name, bool)
    if bool then
        ImGui.Text("Blessings of Yavanna(factionwide): ")
        ImGui.NewLine()
        ImGui.BulletText("Growth")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 0.5%%")
        ImGui.BulletText("Population Replenishment")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 25")
        ImGui.BulletText("Wounded Garrison Replenishment")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 15 per unit")
        ImGui.BulletText("Halt Elven Passing(10 turns)")
    else
        fert_level = 2
        modify_growth = true
        growthTurnsRemain = 5
        block_poe_turns = 10
        replen_bonus = 15
        increaseGrowth(stratmap.game.getFaction(faction_name), 2)
        eur_event_active = true
        if EUR_EVENTS[faction_name][event_number].duration ~= nil then
            if eur_event_activelen < EUR_EVENTS[faction_name][event_number].duration then
                eur_event_activelen = EUR_EVENTS[faction_name][event_number].duration
            end
        end
        EUR_EVENTS[faction_name][event_number].active_cooldown = EUR_EVENTS[faction_name][event_number].cooldown
    end
end

function lorien_2(faction_name, bool)
    if bool then
        ImGui.Text("Summon units: ")
        if eur_tga_table["ents"] ~= nil then
            ImGui.Image(eur_tga_table["ents"].img, 80, 80)
            ImGui.SameLine()
        end
        if eur_tga_table["ents"] ~= nil then
            ImGui.Image(eur_tga_table["ents"].img, 60, 60)
            ImGui.SameLine()
        end
        if eur_tga_table["lothlorien_marchwarden"] ~= nil then
            ImGui.Image(eur_tga_table["lothlorien_marchwarden"].img, 60, 60)
            ImGui.SameLine()
        end
        ImGui.NewLine()
        ImGui.BulletText("Ent General")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 1")
        ImGui.BulletText("Ents")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 1")
        ImGui.BulletText("Lothlorien Marchwardens")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 1")
    else
        local faction = eur_campaign:getFaction(faction_name)
        army = eurSpawnArmy(faction_name, "dpr_", "Ents", faction.capital.xCoord, faction.capital.yCoord, 3, 1, 0)
        if army then
            army:createUnit("Ents",3,0,0);
            army:createUnit("Lothlorien Marchwardens",3,0,0);
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
        end
        eur_event_active = true
        if EUR_EVENTS[faction_name][event_number].duration ~= nil then
            if eur_event_activelen < EUR_EVENTS[faction_name][event_number].duration then
                eur_event_activelen = EUR_EVENTS[faction_name][event_number].duration
            end
        end
        EUR_EVENTS[faction_name][event_number].active_cooldown = EUR_EVENTS[faction_name][event_number].cooldown
    end
end

function elves_0(faction_name, bool)
    if bool then
        ImGui.Text("Grants trait Light of the Eldar(all characters): ")
        ImGui.NewLine()
        ImGui.BulletText("Command")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 4")
        ImGui.BulletText("Line Of Sight")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 4")
        ImGui.BulletText("Movement Points")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 25%%")
        ImGui.BulletText("Hitpoints")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 5")
        ImGui.BulletText("Troop Morale")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 2")
        ImGui.BulletText("Casualty Recovery")
        ImGui.SameLine()
        ImGui.TextColored(0, 1, 0, 1, " + 5%%")
    else
        traitToAdd = "EldarLightEvent"
        traitTurnsRemain = 8
        eventAddTrait(eur_player_faction, true)
        eur_event_active = true
        if EUR_EVENTS[faction_name][event_number].duration ~= nil then
            if eur_event_activelen < EUR_EVENTS[faction_name][event_number].duration then
                eur_event_activelen = EUR_EVENTS[faction_name][event_number].duration
            end
        end
        EUR_EVENTS[faction_name][event_number].active_cooldown = EUR_EVENTS[faction_name][event_number].cooldown
    end
end

EUR_EVENTS["ireland"][0].func = lorien_0
EUR_EVENTS["ireland"][1].func = lorien_1
EUR_EVENTS["ireland"][2].func = lorien_2
EUR_EVENTS["ireland"][3].func = elves_0

EUR_EVENTS["mongols"][0].func = lorien_0
EUR_EVENTS["mongols"][1].func = lorien_1
EUR_EVENTS["mongols"][2].func = lorien_2
EUR_EVENTS["mongols"][3].func = elves_0

EUR_EVENTS["saxons"][0].func = lorien_0
EUR_EVENTS["saxons"][1].func = lorien_1
EUR_EVENTS["saxons"][2].func = lorien_2
EUR_EVENTS["saxons"][3].func = elves_0

EUR_EVENTS["denmark"][0].func = lorien_0
EUR_EVENTS["denmark"][1].func = lorien_1
EUR_EVENTS["denmark"][2].func = lorien_2
EUR_EVENTS["denmark"][3].func = elves_0

function eventSideWindow(faction_name, faction)
    if event_number ~= nil then
        if not EUR_EVENTS[faction_name][event_number] then return end
        ImGui.SameLine()
        ImGui.BeginGroup()
        ImGui.SetNextWindowBgAlpha(1)
        ImGui.BeginChild("Events_window_02", 620*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
        centeredText(EUR_EVENTS[faction_name][event_number].name, 20)
        ImGui.NewLine()
        ImGui.TextWrapped("Gold: "..tostring(EUR_EVENTS[faction_name][event_number].cost))
        if EUR_EVENTS[faction_name][event_number].duration ~= nil then
            ImGui.TextWrapped("Duration: "..tostring(EUR_EVENTS[faction_name][event_number].duration))
        end
        ImGui.TextWrapped("Cooldown: "..tostring(EUR_EVENTS[faction_name][event_number].cooldown))
        ImGui.NewLine()
        ImGui.TextWrapped(EUR_EVENTS[faction_name][event_number].desc)

        ImGui.NewLine()
        ImGui.NewLine()

        EUR_EVENTS[faction_name][event_number].func(faction_name, true)

        ImGui.EndChild()
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Events_window_03", 620*eurbackgroundWindowSizeRight, 25*eurbackgroundWindowSizeBottom)
        if EUR_EVENTS[faction_name][event_number].active_cooldown == 0 then
            if eur_event_min_cooldown == 0 then
                if faction.money >= EUR_EVENTS[faction_name][event_number].cost then
                    if (centeredImageButton("accept", 100, 20, 0)) then
                        EUR_EVENTS[faction_name][event_number].func(faction_name, false)
                        show_events_window = false
                        eur_event_min_cooldown = 10
                        event_selected[event_number] = false
                        event_number = 99
                    end
                else
                    centeredText("Requires: ".. tostring(EUR_EVENTS[faction_name][event_number].cost) .. " Gold.", 20)
                end
            else
                centeredText("Too soon since last event, next available in: ".. tostring(eur_event_min_cooldown) .. " Turns.", 20)
            end
        else
            centeredText("Event on cooldown for: ".. tostring(EUR_EVENTS[faction_name][event_number].active_cooldown) .. " Turns.", 20)
        end
        ImGui.EndChild()
        ImGui.EndGroup()
    end
end
