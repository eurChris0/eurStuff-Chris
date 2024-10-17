require('eur/eurHistoricEventText')

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

temp_options_tree = {
    ["campaign"] = false,
    ["font"] = false,
    ["replen"] = false,
    ["genup"] = false,
    ["genbgsize"] = false,
    ["unitup"] = false,
    ["prebat"] = false,
    ["poe"] = false,
}

temp_options_selected = {
    ["campaign"] = false,
    ["font"] = false,
    ["replen"] = false,
    ["genup"] = false,
    ["genbgsize"] = false,
    ["unitup"] = false,
    ["prebat"] = false,
    ["poe"] = false,
}

temp_options_show = {
    ["campaign"] = false,
    ["font"] = false,
    ["replen"] = false,
    ["genup"] = false,
    ["genbgsize"] = false,
    ["unitup"] = false,
    ["prebat"] = false,
    ["poe"] = false,
}

temp_event_selected = {
    ["turks"] = {
        ["Northern Dúnedain"] = true,
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Northern Dúnedain"] = false,
    },
    ["russia"] = {
        ["Alternate Start"] = true,
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["milan"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["sicily"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["scotland"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["byzantium"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["timurids"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["portugal"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["aztecs"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["teutonic_order"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["spain"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["khand"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["venice"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["norway"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["hungary"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["moors"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["mongols"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["ireland"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["denmark"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["england"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["poland"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["hre"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["gundabad"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["france"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["saxons"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
}

temp_event_show = {
    ["turks"] = {
        ["Northern Dúnedain"] = true,
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Northern Dúnedain"] = false,
    },
    ["russia"] = {
        ["Alternate Start"] = true,
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["milan"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["sicily"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["scotland"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["byzantium"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["timurids"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["portugal"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["aztecs"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["teutonic_order"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["spain"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["khand"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["venice"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["norway"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["hungary"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["moors"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["mongols"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["ireland"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["denmark"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["england"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["poland"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["hre"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["gundabad"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["france"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
    ["saxons"] = {
        ["Welcome to EUR V2"] = false,
        ["Faction Info: Ar-Adûnâim"] = false,
    },
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
    local temp_i = 0
    local temp_pos_x = {}
    local temp_pos_y = {}
    local pos_x, pos_y = 0,0
    local show_additional = false
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
            ImGui.BeginChild("Child Window_options_subtab_1", 375*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
            if temp_event_selected[eur_player_faction.name] then
                for k, v in pairs(temp_event_selected[eur_player_faction.name]) do
                    ImGui.BeginChild("Name3".. k, 375*eurbackgroundWindowSizeRight, 50*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
                    temp_pos_x[temp_i], temp_pos_y[temp_i] = ImGui.GetWindowPos()
                    ImGui.NewLine()
                    ImGui.NewLine()
                    centeredText(k, 0)
                    ImGui.EndChild()
        
                    ImGui.SetNextWindowBgAlpha(0)
                    ImGui.SetNextWindowPos(temp_pos_x[temp_i]*eurbackgroundWindowSizeRight, temp_pos_y[temp_i]*eurbackgroundWindowSizeBottom)
                    ImGui.BeginChild("Name3".. k.."2", 375*eurbackgroundWindowSizeRight, 50*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
                    temp_event_selected[eur_player_faction.name][k] = ImGui.Selectable("", temp_event_selected[eur_player_faction.name][k], ImGuiSelectableFlags.None, 375*eurbackgroundWindowSizeRight, 50*eurbackgroundWindowSizeBottom)
                    if temp_event_selected[eur_player_faction.name][k] then
                        temp_event_show[eur_player_faction.name][k] = true
                        for k2, v2 in pairs(temp_event_selected[eur_player_faction.name]) do
                            if k2 ~= k then
                                temp_event_selected[eur_player_faction.name][k2] = false
                                temp_event_show[eur_player_faction.name][k2] = false
                            end
                        end
                    end
                    temp_i = temp_i+1
                    ImGui.EndChild()
                end
            end
            
            ImGui.NewLine()
            ImGui.EndChild()
            ImGui.SameLine()
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_subtab_2", 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
            if temp_event_selected[eur_player_faction.name] then
                for k, v in pairs(temp_event_show[eur_player_faction.name]) do
                    if temp_event_show[eur_player_faction.name][k] then
                        if faction_events_text[eur_player_faction.name][k] then
                            if not faction_events_text[eur_player_faction.name][k].func then
                                if faction_events_text[eur_player_faction.name][k].img then
                                    centeredImage(faction_events_text[eur_player_faction.name][k].img,370*eurbackgroundWindowSizeRight, 150*eurbackgroundWindowSizeBottom)
                                end
                                ImGui.NewLine()
                                ImGui.TextWrapped(faction_events_text[eur_player_faction.name][k].desc)
                                show_additional = false
                            else
                                faction_events_text[eur_player_faction.name][k].func()
                                show_additional = true
                            end
                        end
                    end
                end
            end
            ImGui.EndChild()

            if show_additional then
                ImGui.SameLine()
                ImGui.SetNextWindowBgAlpha(0)
                ImGui.BeginChild("Child Window_options_subtab_3", 350*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)
                optionsSideWindow1()
                ImGui.EndChild()
            end
            ImGui.EndTabItem()
        end
        if (ImGui.BeginTabItem("Settings##01")) then
            show_collapse_button = true
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
            optionsCampaign(true)
            optionsReplen(true)
            optionsGeneralUpgrades(true)
            optionsGeneralBGSize(true)
            optionsUnitUpgrades(true)
            optionsPrebattle(true)
            optionsPOE(true)
            
            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SameLine()
            ImGui.BeginChild("Child Window_options_tab_2", 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)

            optionsFont(false)
            optionsCampaign(false)
            optionsReplen(false)
            optionsGeneralUpgrades(false)
            optionsGeneralBGSize(false)
            optionsUnitUpgrades(false)
            optionsPrebattle(false)
            optionsPOE(false)

            ImGui.EndChild()

            ImGui.EndTabItem()
        else
            show_collapse_button = false
        end
        if (ImGui.BeginTabItem("Credits##01")) then
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

function hoveredCheck(element, show_list, selected_list)
    local hovered = ImGui.IsWindowHovered(ImGuiHoveredFlags.ChildWindows)
    if hovered then
        clickedleft = ImGui.IsMouseClicked(ImGuiMouseButton.Left, false)
        if clickedleft then
            if not selected_list[element] then
                for k, v in pairs(selected_list) do
                    if v then
                        selected_list[k] = false
                    end
                end
                for k, v in pairs(show_list) do
                    show_list[k] = false
                end
                show_list[element] = true
                selected_list[element] = true
            else
                selected_list[element] = false
                show_list[element] = false
            end
        end
        local is_selected = false
        for k, v in pairs(selected_list) do
            if v then
                is_selected = true
            end
        end
        if not is_selected then
            for k, v in pairs(show_list) do
                v = false
            end
            show_list[element] = true
        end
    else
        local is_selected = false
        for k, v in pairs(selected_list) do
            if v then
                is_selected = true
            end
        end
        if not is_selected then
            for k, v in pairs(show_list) do
                v = false
            end
            show_list[element] = false
        end
    end

end

function optionsGeneralUpgrades(bool)
    local name = "genup"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("General Upgrades")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
            options_gen_upgrades, pressed = ImGui.Checkbox("Enabled", options_gen_upgrades)
            ImGui.TextColored(0,1,0,1,"Cannot be reverted during campaign.")
            ImGui.Text("Cooldown(turns):")
            if (ImGui.Button("-##06", 25, 25)) then
                if bg_swap_cooldown > 4 then
                    bg_swap_cooldown=bg_swap_cooldown-5
                end
            end
            ImGui.SameLine()
            ImGui.Text(tostring(bg_swap_cooldown))
            ImGui.SameLine()
            if (ImGui.Button("+##06", 25, 25)) then
                if bg_swap_cooldown < 30 then
                    bg_swap_cooldown=bg_swap_cooldown+5
                end
            end
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text("General's Bodyguard Upgrades")
            ImGui.BulletText("All generals")
            ImGui.BulletText("Not all units.")
            ImGui.BulletText("Added button to character panel, shows when garrisoned in a settlement.")
            ImGui.BulletText("T1, T2 and T3 units available depending on generals level(calculated on command and loyalty or authority).")
            ImGui.BulletText("Generals that start with the generic bodyguard are automatically changed to a T1 or T2 unit, depending on their level.")
            ImGui.BulletText("Level calculated over a 10 turn period.")
            ImGui.BulletText("Special tier units unlocked based on traits gained(conquerer, faction leader ect).")
            ImGui.NewLine()
            ImGui.EndChild()
        end
    end
end

function optionsReplen(bool)
    local name = "replen"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("Replenishment")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 160*eurbackgroundWindowSizeBottom)
            options_replen, pressed = ImGui.Checkbox("Enabled", options_replen)
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
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text("Replenishment")
            ImGui.BulletText("All units replenish over the end turn(player and AI).")
            ImGui.BulletText("Default only garrisoned units.")
            ImGui.BulletText("Default beast units disabled(Trolls, Ents ect).")
            ImGui.BulletText("Variable replenishment based seed number and unit size.")
            ImGui.NewLine()
            ImGui.Text("Options:")
            ImGui.BulletText("Set replenishment rate to low, medium or high.")
            ImGui.BulletText("Enable replenishment anywhere.")
            ImGui.BulletText("Enable for beast units.")
            ImGui.NewLine()
            ImGui.EndChild()
        end
    end
end

function optionsGeneralBGSize(bool)
    local name = "genbgsize"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("Variable Bodyguard Size")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
            options_gen_bg_size, bg_size_pressed = ImGui.Checkbox("Enabled", options_gen_bg_size)
            if not options_gen_bg_size then 
                if bg_size_pressed then
                    for i = 1, #mod_general_units_list do
                        local eduEntry = M2TWEOPDU.getEduEntryByType(mod_general_units_list[i].name)
                        if eduEntry ~= nil then
                            if eduEntry.soldierCount == mod_general_units_list[i].size then
                                if original_general_units_list[eduEntry.eduType] then
                                    eduEntry.soldierCount = original_general_units_list[eduEntry.eduType]
                                    print("reverting")
                                end
                            end
                        end
                    end
                end
            else
                if bg_size_pressed then
                    for i = 1, #mod_general_units_list do
                        local eduEntry = M2TWEOPDU.getEduEntryByType(mod_general_units_list[i].name)
                        if eduEntry ~= nil then
                            if not original_general_units_list[eduEntry.eduType] then
                                original_general_units_list[eduEntry.eduType] = eduEntry.soldierCount
                            end
                            eduEntry.soldierCount = mod_general_units_list[i].size
                            print("increasing")
                        end
                    end
                end
            end
            ImGui.Text("Minimun bodyguard size(rounded up):")
            if (ImGui.Button("-##03", 25, 25)) then
                if bg_min_size_multi > 2 then
                    bg_min_size_multi=bg_min_size_multi-1
                end
            end
            ImGui.SameLine()
            ImGui.Text("1 / "..tostring(bg_min_size_multi))
            ImGui.SameLine()
            if (ImGui.Button("+##03", 25, 25)) then
                if bg_min_size_multi < 4 then
                    bg_min_size_multi=bg_min_size_multi+1
                end
            end
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text(name)
            ImGui.Text("Variable Bodyguard Size")
            ImGui.BulletText("Player and AI.")
            ImGui.BulletText("Generic bodyguard size inceased in-line with regular units.")
            ImGui.BulletText("Bodyguard size based on command(measured over end turn).")
            ImGui.BulletText("Personal security remains unaffected.")
            ImGui.NewLine()
            ImGui.NewLine()
            ImGui.Text("Options:")
            ImGui.BulletText("Change minimum bodyguard size(default 1/4 at 0 command stars).")
            ImGui.EndChild()
        end
    end
end

function optionsUnitUpgrades(bool)
    local name = "unitup"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("Unit Upgrades")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
            options_unit_upgrades, pressed = ImGui.Checkbox("Enabled", options_unit_upgrades)
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
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text("Unit Upgrades")
            ImGui.BulletText("Not all units.")
            ImGui.BulletText("Added button to unit scroll for unit upgrades.")
            ImGui.BulletText("Minimum experience requirement, unit loses the same amount of experience during upgrade.")
            ImGui.BulletText("Upgrade paths to higher tier units of the same type and sidegrade paths to units within the same tier.")
            ImGui.NewLine()
            ImGui.Text("Options:")
            ImGui.BulletText("Reduce experience requirement(global).")
            ImGui.NewLine()
            ImGui.EndChild()
        end
    end
end

function optionsPrebattle(bool)
    local name = "prebat"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("Pre-battle Options")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
            options_pre_battle, pressed = ImGui.Checkbox("Enabled", options_pre_battle)
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text("Pre-battle Options")
            ImGui.BulletText("Split a unit for the upcoming battle.")
            ImGui.NewLine()
            ImGui.EndChild()
        end
    end
end

function optionsPOE(bool)
    if not ELVEN_FACTIONS[eur_localFactionName] then return end
    local name = "poe"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("Passing of the Elves")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
            options_poe, pressed = ImGui.Checkbox("Enabled", options_poe)
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
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
            ImGui.Text("Passing of the Elves")
            ImGui.BulletText("Long desc here.")
            ImGui.NewLine()
            ImGui.Text("Options:")
            ImGui.BulletText("Frequency of passings(turns).")
            ImGui.BulletText("Change to random frequency(min-max turns).")
            ImGui.NewLine()
            ImGui.EndChild()
        end
    end
end

function optionsFont(bool)
    local name = "font"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("UI Options")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
            font_choice, clicked_font = ImGui.Combo("Font", font_choice, font_list_names, #font_list, #font_list+1)
            font_RINGM = font_list[font_choice+1]
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)

            ImGui.EndChild()
        end
    end
end

function optionsCampaign(bool)
    local name = "campaign"
    if bool then
        temp_options_tree[name] = ImGui.CollapsingHeader("Campaign Miscellaneous")
        if temp_options_tree[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_1"..name, 750*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
            options_hardcore, hardpressed = ImGui.Checkbox("Hardcore mode", options_hardcore)
            if hardpressed then
                if options_hardcore then
                    eur_campaign.restrictAutoResolve = 1
                else
                    eur_campaign.restrictAutoResolve = 0
                end
            end
            ImGui.Separator()
            options_addspoils, pressed = ImGui.Checkbox("Post-battle loot", options_addspoils)
            ImGui.Separator()
            options_merge, pressed = ImGui.Checkbox("AI Army merging", options_merge)
            ImGui.Text("Turns between merges:")
            if (ImGui.Button("-##05", 25, 25)) then
                if merge_turn_multi > 1 then
                    merge_turn_multi=merge_turn_multi-1
                end
            end
            ImGui.SameLine()
            ImGui.Text(tostring(merge_turn_multi))
            ImGui.SameLine()
            if (ImGui.Button("+##05", 25, 25)) then
                if merge_turn_multi < 10 then
                    merge_turn_multi=merge_turn_multi+1
                end
            end
            ImGui.Separator()
            options_sort, pressed = ImGui.Checkbox("Army Sorting", options_sort)
            ImGui.Text("Sort order:") 
            sort_order.a, clicked = ImGui.Combo("First", sort_order.a, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "(Default)Category + Class", "AI unit value"}, 7, 8)
            sort_order.b, clicked2 = ImGui.Combo("Second", sort_order.b, {"(Default)EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
            sort_order.c, clicked3 = ImGui.Combo("Third", sort_order.c, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "(Default)Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
            ImGui.Separator()
            hoveredCheck(name, temp_options_show, temp_options_selected)
            ImGui.EndChild()
        end
    else
        if temp_options_show[name] then
            ImGui.SetNextWindowBgAlpha(0)
            ImGui.BeginChild("Child Window_options_sub_2"..name, 750*eurbackgroundWindowSizeRight, 650*eurbackgroundWindowSizeBottom)

            ImGui.Text("Hardcore mode:")
            ImGui.BulletText("Disables auto-resolve.")
            ImGui.NewLine()
            ImGui.Separator()
            ImGui.NewLine()
            ImGui.Text("Post-battle loot")
            ImGui.BulletText("After winning a battle, the player has a chance of looting the enemy baggage train.")
            ImGui.BulletText("Chance of looting based on victory type.")
            ImGui.BulletText("Amount of gold based on victory type and army compositions.")
            ImGui.NewLine()
            ImGui.Separator()
            ImGui.NewLine()
            ImGui.Text("AI Army Merging")
            ImGui.BulletText("Automatically merges all small AI armies over the end turn, regardless of distance.")
            ImGui.NewLine()
            ImGui.Text("Options:")
            ImGui.BulletText("Frequency of merges(turns).")
            ImGui.NewLine()
            ImGui.Separator()
            ImGui.NewLine()
            ImGui.Text("Army Sorting")
            ImGui.BulletText("Sorts unit cards within all player armies over the end turn.")
            ImGui.NewLine()
            ImGui.Text("Options:")
            ImGui.BulletText("Decide the first, second and third order of sorting.")
            ImGui.NewLine()
            if sortstack1 then
                ImGui.Image(sortstack1.img,630*eurbackgroundWindowSizeRight, 266*eurbackgroundWindowSizeBottom)
            end
            ImGui.NewLine()
            ImGui.Separator()
            ImGui.NewLine()

            ImGui.EndChild()
        end
    end
end
