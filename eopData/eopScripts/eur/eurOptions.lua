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
    ImGui.SetNextWindowPos(200*eurbackgroundWindowSizeRight, 5*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.SetNextWindowSize(1500*eurbackgroundWindowSizeRight, 860*eurbackgroundWindowSizeBottom)
    ImGui.Begin("options_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration,ImGuiWindowFlags.NoBackground))
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
            font_choice, clicked_font = ImGui.Combo("Font", font_choice, font_list_names, #font_list, #font_list+1)
            font_RINGM = font_list[font_choice+1]
            options_replen, pressed = ImGui.Checkbox("Replenishment", options_replen)
            options_poe, pressed = ImGui.Checkbox("Passing of the Elves", options_poe)
            options_merge, pressed = ImGui.Checkbox("AI army merging", options_merge)
            options_sort, pressed = ImGui.Checkbox("Auto unit sorting", options_sort)
            --options_prepost_save, pressed = ImGui.Checkbox("Pre/Post battle save", options_prepost_save)
            
            sort_order.a, clicked = ImGui.Combo("First", sort_order.a, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "(Default)Category + Class", "AI unit value"}, 7, 8)
            sort_order.b, clicked2 = ImGui.Combo("Second", sort_order.b, {"(Default)EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
            sort_order.c, clicked3 = ImGui.Combo("Third", sort_order.c, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "(Default)Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
        
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
        show_options_window = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end
