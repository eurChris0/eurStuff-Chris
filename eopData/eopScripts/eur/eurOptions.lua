local beta_intro = 
[[Welcome to the Epic Unity Rework V2 beta. This is a pre-release build and subject to change, please do not discuss specifics of the beta outside of the beta testing channels.

Feel free to discuss or feedback on the beta in the general-test channel, we have introduced several new EOP scripts and are looking for feedback and testing on these specifically. 

Testing focus
]]
local beta_focus = 
[[


]]
local beta_changelog = 
[[Changelog: 

]]

local turks_sicily_confed = false
local show_bg_size_text = false

temp_options_selected = {
    ["font"] = false,
    ["replen"] = false,
    ["genup"] = false,
    ["genbgsize"] = false,
    ["unitup"] = false,
    ["prebat"] = false,
    ["spoils"] = false,
    ["poe"] = false,
    ["mergeAI"] = false,
    ["sortstack"] = false,
}

temp_options_show = {
    ["font"] = false,
    ["replen"] = false,
    ["genup"] = false,
    ["genbgsize"] = false,
    ["unitup"] = false,
    ["prebat"] = false,
    ["spoils"] = false,
    ["poe"] = false,
    ["mergeAI"] = false,
    ["sortstack"] = false,
}

function optionsButton()
    ImGui.SetNextWindowPos(1320*eurbackgroundWindowSizeRight, 750*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.0)
    ImGui.SetNextWindowSize(70, 70)
    ImGui.Begin("options_button_01", true, bit.bor(ImGuiWindowFlags.NoDecoration,ImGuiWindowFlags.NoBackground))
    eurStyle("basic_1", true)
    if button1 then
        if ImGui.ImageButton("options_button_1",button1.img,50,50) then
            if show_options_window == false then
                show_options_window = true
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            else
                show_options_window = false
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            end
        end
    else
        if (ImGui.Button("Options", 80, 20)) then
            if show_options_window == false then
                show_options_window = true
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            else
                show_options_window = false
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            end
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

function optionsWindow()
    local pos_x, pos_y = 0,0
    ImGui.SetNextWindowPos(200*eurbackgroundWindowSizeRight, 5*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(1)
    ImGui.SetNextWindowSize(1500*eurbackgroundWindowSizeRight, 860*eurbackgroundWindowSizeBottom)
    ImGui.Begin("options_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    if bg_2 then
        ImGui.Image(bg_2.img,1500*eurbackgroundWindowSizeRight, 850*eurbackgroundWindowSizeBottom)
    end

    ImGui.SetNextWindowPos(210*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.5)
    ImGui.BeginChild("Child Window_options_1", 1480*eurbackgroundWindowSizeRight, 700*eurbackgroundWindowSizeBottom)
    --centeredText("Epic Unity Rework V2 Beta", 0)
    if (ImGui.BeginTabBar("options_tabbar_1")) then
        if (ImGui.BeginTabItem("About##01")) then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_tab_1", 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
            ImGui.NewLine()
            ImGui.TextWrapped(beta_intro)
            ImGui.TextWrapped("    - Elven Factions")
            ImGui.NewLine()
            ImGui.EndChild()
            ImGui.EndTabItem()
        end
        if (ImGui.BeginTabItem("Settings##01")) then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_tab_1", 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
            ImGui.NewLine()
            --[[
            ImGui.Text("Click to form re-united kingdom next turn.")
            if (ImGui.Button("Re-united", 80, 20)) then
                if not turks_sicily_confed then
                    turks_sicily_confed = true
                    local ND = eur_campaign:getFaction("turks")
                    local Gondor = eur_campaign:getFaction("sicily")
                    local aragorn = getnamedCharbyLabel("aragorn_1")
                    if aragorn then
                        aragorn:addTraitPoints("Aragorn", 7)
                    end
                    M2TWEOP.setScriptCounter("nd_choose_rk", 1)
                    eur_campaign:setDipStance(dipRelType.alliance, ND, Gondor);

                    if EOP_WAVS["uicah_menuclick1"] ~= nil then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                    end
                end
            end
            if turks_sicily_confed then
                ImGui.TextColored(0,1,0,1,"Gondor Confederation chosen!")
            end
            ]]

            optionsFont(true)
            optionsReplen(true)
            optionsGeneralUpgrades(true)
            optionsGeneralBGSize(true)
            optionsUnitUpgrades(true)
            optionsPrebattle(true)
            optionsSpoils(true)
            optionsPOE(true)
            optionsMerge(true)
            optionsSort(true)
            
            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SameLine()
            ImGui.BeginChild("Child Window_options_tab_2", 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)

            optionsFont(false)
            optionsReplen(false)
            optionsGeneralUpgrades(false)
            optionsGeneralBGSize(false)
            optionsUnitUpgrades(false)
            optionsPrebattle(false)
            optionsSpoils(false)
            optionsPOE(false)
            optionsMerge(false)
            optionsSort(false)

            ImGui.EndChild()

            ImGui.EndTabItem()
        end
        if (ImGui.BeginTabItem("Scripts##01")) then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_tab_1", 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
            ImGui.NewLine()
            if (ImGui.BeginTabBar("options_tabbar_sub_1")) then
                if (ImGui.BeginTabItem("Main##01")) then
                    ImGui.NewLine()
                    ImGui.TextWrapped("Events:")
                    ImGui.TextColored(1,0,0,1,"WIP, only Elves right now")
                    ImGui.TextWrapped("New UI added with selectable campaign events, one off or repeatables with various costs, cooldowns and unlock conditions")
                    ImGui.TextWrapped("    - Varies per faction.")
                    ImGui.TextWrapped("    - See Events UI for details.")
                    ImGui.NewLine()
                    ImGui.TextWrapped("Passing of the Elves:")
                    ImGui.TextColored(1,0,0,1,"WIP, only Elves")
                    ImGui.TextWrapped("Long desc goes here...")
                    ImGui.TextWrapped("    - Ends on reaching rank 1-2 or on faction goal.")
                    ImGui.TextWrapped("    - Expanding territory, winning battles or building Grove buildings mitigates effects.")
                    ImGui.TextWrapped("    - Losing battles exacerbates effects.")
                    ImGui.NewLine()
                    ImGui.TextWrapped("Unit Upgrades:")
                    ImGui.TextColored(1,0,0,1,"WIP, Wood Elves and Rohan right now.")
                    ImGui.TextWrapped("Upgrade certain units to higher tier ones once experience requirement is met.")
                    ImGui.TextWrapped("    - Available units have button added to the Unit Scroll.")
                    ImGui.NewLine()
                    ImGui.TextWrapped("General's Bodyguard:")
                    ImGui.TextColored(1,0,0,1,"WIP")
                    ImGui.TextWrapped("Upgrade a generals bodyguard throughout the campaign.")
                    ImGui.TextWrapped("    - Generals that start with the generic bodyguard switched to new starting unit.")
                    ImGui.TextWrapped("    - Basic unit unlocks based on Command and Influence.")
                    ImGui.TextWrapped("    - Bodyguard size based on Command level.")
                    ImGui.TextWrapped("    - Special unlocks for specific characters or traits.")
                    ImGui.TextWrapped("    - Button added to Character Panel.")
                    ImGui.NewLine()
                    ImGui.EndTabItem()
                end
                if (ImGui.BeginTabItem("Background##01")) then
                    ImGui.NewLine()
                    ImGui.TextWrapped("Campaign: ")
                    ImGui.TextWrapped("    - Units will replenish over the end turn when garrisoned, random amount based on unit size.")
                    ImGui.TextWrapped("    - Dynamic post-battle spoils based on victory type and army composition.")
                    ImGui.TextWrapped("    - Auto-sorting for player's armies.")
                    ImGui.TextWrapped("    - Some T1 units are converted during a confederation to bring them in line with the player's faction.")
                    ImGui.TextWrapped("    - Units can be temporarily split during pre-battle.")
                    ImGui.TextWrapped("    - If a unit is disbanded in a settlement where it can be recruited, adds to the recruitment pool.")
                    ImGui.TextWrapped("    - AI armies will automatically merge over the end turn.")
                    ImGui.TextWrapped("    - Settlements bought or sold through diplomacy will be automatically assigned a garrison.")
                    --ImGui.TextWrapped("    - ")
                    ImGui.NewLine()
                    ImGui.EndTabItem()
                end
                if (ImGui.BeginTabItem("Hotkeys##01")) then
                    ImGui.NewLine()
                    ImGui.TextWrapped("Battle: ")
                    ImGui.TextWrapped("    - CTRL+Q to flash units.")
                    ImGui.TextWrapped("    - Z to zoom out.")
                    ImGui.TextWrapped("    - X to zoom in.")
                    ImGui.NewLine()
                    ImGui.EndTabItem()
                end
                ImGui.EndTabBar()
            end
            ImGui.EndChild()
            ImGui.EndTabItem()
        end
        ImGui.EndTabBar()
    end

    ImGui.EndChild()
    if (centeredImageButton("Close", 80, 50, 0)) then
        if options_first_run then
            show_options_window = false
            show_options_accept = true
        else
            show_options_window = false
        end
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

function optionsAccept()
    ImGui.SetNextWindowSize(400*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowPos(760*eurbackgroundWindowSizeRight, 440*eurbackgroundWindowSizeBottom)
    ImGui.Begin("options_accept_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    centeredText("Accept and start campaign?",0)
    if (centeredImageButton("Yes", 80, 50, -40)) then
        show_options_accept = false
        options_first_run = false
        setBGSize(eur_player_faction, nil, nil)
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    ImGui.SameLine()
    if (centeredImageButton("No", 80, 50, 40)) then
        show_options_window = true
        show_options_accept = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

function hoveredCheck(element)
    local hovered = ImGui.IsWindowHovered(ImGuiHoveredFlags.ChildWindows)
    if hovered then
        clickedleft = ImGui.IsMouseClicked(ImGuiMouseButton.Left, false)
        if clickedleft then
            if not temp_options_selected[element] then
                for k, v in pairs(temp_options_selected) do
                    if v then
                        temp_options_selected[k] = false
                    end
                end
                for k, v in pairs(temp_options_show) do
                    temp_options_show[k] = false
                end
                temp_options_show[element] = true
                temp_options_selected[element] = true
            else
                temp_options_selected[element] = false
                temp_options_show[element] = false
            end
        end
        local is_selected = false
        for k, v in pairs(temp_options_selected) do
            if v then
                is_selected = true
            end
        end
        if not is_selected then
            for k, v in pairs(temp_options_show) do
                v = false
            end
            temp_options_show[element] = true
        end
    else
        local is_selected = false
        for k, v in pairs(temp_options_selected) do
            if v then
                is_selected = true
            end
        end
        if not is_selected then
            for k, v in pairs(temp_options_show) do
                v = false
            end
            temp_options_show[element] = false
        end
    end

end

function optionsGeneralUpgrades(bool)
    local name = "genup"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_gen_upgrades, pressed = ImGui.Checkbox("General upgrades", options_gen_upgrades)
        ImGui.TextColored(0,1,0,1,"Cannot be reverted during campaign.")
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsReplen(bool)
    local name = "replen"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_replen, pressed = ImGui.Checkbox("Replenishment", options_replen)
        if options_replen then
            ImGui.Text(replen_text)
            replen_low = ImGui.Button("Low", 64, 64) 
            if replen_low then
                replen_randmax = 1
                replen_multi = 120
                replen_text = "Rate: Low"
            end
            ImGui.SameLine()
            replen_mid = ImGui.Button("Medium", 64, 64) 
            if replen_mid then
                replen_randmax = 3
                replen_multi = 80
                replen_text = "Rate: Medium"
            end
            ImGui.SameLine()
            replen_high = ImGui.Button("High", 64, 64) 
            if replen_high then
                replen_randmax = 6
                replen_multi = 40
                replen_text = "Rate: High"
            end
            options_replen_beast, pressed = ImGui.Checkbox("Beast Units", options_replen_beast)
            replen_always, pressed = ImGui.Checkbox("Replenish anywhere", replen_always)
            if options_replen_beast then
                replen_beast_value = 0
            else
                replen_beast_value = 8
            end
        end
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsGeneralBGSize(bool)
    local name = "genbgsize"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)

        ImGui.Separator()
        options_gen_bg_size, bg_size_pressed = ImGui.Checkbox("General variable bodyguard size", options_gen_bg_size)
        if bg_size_pressed then
            show_bg_size_text = true
        end
        if show_bg_size_text then
            ImGui.TextColored(1,0,0,1,"Press button after enable/disable.")
        end
        if not options_gen_bg_size then
            local options_gen_revert = ImGui.Button("Revert", 64, 64) 
            if options_gen_revert then
                for i = 1, #mod_general_units_list do
                    local eduEntry = M2TWEOPDU.getEduEntryByType(mod_general_units_list[i].name)
                    if eduEntry ~= nil then
                        if eduEntry.soldierCount == mod_general_units_list[i].size then
                            if original_general_units_list[eduEntry.eduType] then
                                eduEntry.soldierCount = original_general_units_list[eduEntry.eduType]
                                show_bg_size_text = false
                            end
                        end
                        show_bg_size_text = false
                    end
                end
            end
        else
            local options_gen_redo = ImGui.Button("Redo", 64, 64) 
            if options_gen_redo then
                for i = 1, #mod_general_units_list do
                    local eduEntry = M2TWEOPDU.getEduEntryByType(mod_general_units_list[i].name)
                    if eduEntry ~= nil then
                        if not original_general_units_list[eduEntry.eduType] then
                            original_general_units_list[eduEntry.eduType] = eduEntry.soldierCount
                        end
                        eduEntry.soldierCount = mod_general_units_list[i].size
                        show_bg_size_text = false
                    end
                end
                show_bg_size_text = false
            end
        end
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsUnitUpgrades(bool)
    local name = "unitup"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_unit_upgrades, pressed = ImGui.Checkbox("Unit upgrades", options_unit_upgrades)
        if options_unit_upgrades then
            ImGui.Text("Experience requirement reduction:")
            if (ImGui.Button("-##03", 25, 25)) then
                if unit_upgrades_multi > 0 then
                    unit_upgrades_multi=unit_upgrades_multi-1
                end
            end
            ImGui.SameLine()
            ImGui.Text(tostring(unit_upgrades_multi))
            ImGui.SameLine()
            if (ImGui.Button("+##03", 25, 25)) then
                if unit_upgrades_multi < 2 then
                    unit_upgrades_multi=unit_upgrades_multi+1
                end
            end
        end
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsPrebattle(bool)
    local name = "prebat"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_pre_battle, pressed = ImGui.Checkbox("Pre-battle options", options_pre_battle)
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsSpoils(bool)
    local name = "spoils"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_addspoils, pressed = ImGui.Checkbox("Variable post-battle loot", options_addspoils)
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsPOE(bool)
    local name = "poe"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_poe, pressed = ImGui.Checkbox("Passing of the Elves", options_poe)
        if options_poe then
            random_poe, pressed = ImGui.Checkbox("Random turns", random_poe)
            if random_poe then
                ImGui.Text("Turns: "..tostring(poe_turns_min).." to "..tostring(poe_turns_max))
            else
                ImGui.Text("Turns: "..tostring(poe_turns_max))
            end
            if random_poe then
                ImGui.Text("Min:")
                if (ImGui.Button("-##01", 25, 25)) then
                    if poe_turns_min > 1 then
                        if poe_turns_min <= poe_turns_max then
                            poe_turns_min=poe_turns_min-1
                        end
                    end
                end
                ImGui.SameLine()
                ImGui.Text(tostring(poe_turns_min))
                ImGui.SameLine()
                if (ImGui.Button("+##01", 25, 25)) then
                    if poe_turns_min < 8 then
                        if poe_turns_min < poe_turns_max then
                            poe_turns_min=poe_turns_min+1
                        end
                    end
                end
            end
            if random_poe then
                ImGui.Text("Max:")
            end
            if (ImGui.Button("-##02", 25, 25)) then
                if poe_turns_max > 1 then
                    if poe_turns_max > poe_turns_min then
                        poe_turns_max=poe_turns_max-1
                    end
                end
            end
            ImGui.SameLine()
            ImGui.Text(tostring(poe_turns_max))
            ImGui.SameLine()
            if (ImGui.Button("+##02", 25, 25)) then
                if poe_turns_max < 8 then
                    if poe_turns_max >= poe_turns_min then
                        poe_turns_max=poe_turns_max+1
                    end
                end
            end
        end
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsMerge(bool)
    local name = "mergeAI"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_merge, pressed = ImGui.Checkbox("AI army merging", options_merge)
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsSort(bool)
    local name = "sortstack"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        ImGui.Separator()
        options_sort, pressed = ImGui.Checkbox("Auto sorting", options_sort)
        if options_sort then
            ImGui.Text("Sort order:") 
            sort_order.a, clicked = ImGui.Combo("First", sort_order.a, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "(Default)Category + Class", "AI unit value"}, 7, 8)
            sort_order.b, clicked2 = ImGui.Combo("Second", sort_order.b, {"(Default)EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
            sort_order.c, clicked3 = ImGui.Combo("Third", sort_order.c, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "(Default)Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
        end
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsFont(bool)
    local name = "font"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        font_choice, clicked_font = ImGui.Combo("Font", font_choice, font_list_names, #font_list, #font_list+1)
        font_RINGM = font_list[font_choice+1]
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsFont(bool)
    local name = "font"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        font_choice, clicked_font = ImGui.Combo("Font", font_choice, font_list_names, #font_list, #font_list+1)
        font_RINGM = font_list[font_choice+1]
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end

function optionsFont(bool)
    local name = "font"
    if bool then
        ImGui.SetNextWindowBgAlpha(0)
        ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
        font_choice, clicked_font = ImGui.Combo("Font", font_choice, font_list_names, #font_list, #font_list+1)
        font_RINGM = font_list[font_choice+1]
        hoveredCheck(name)
        ImGui.EndChild()
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            if test1 then
                ImGui.Image(test1.img,500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()
        end
    end
end