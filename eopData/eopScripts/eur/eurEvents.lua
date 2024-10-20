require('eur/eurEvent/eurEventsFunc')
require('eur/eurEvent/eurEventsVars')
require('eur/eurEvent/eurEventImGiuWindows')

function eventsButton()
    if not EUR_EVENTS[eur_localFactionName] then return end
    ImGui.SetNextWindowPos(1490*eurbackgroundWindowSizeRight, 840*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.0)
    ImGui.SetNextWindowSize(80, 80)
    ImGui.Begin("Events_button_01", true, bit.bor(ImGuiWindowFlags.NoDecoration,ImGuiWindowFlags.NoBackground))
    eurStyle("basic_1", true)
    local show_button = false
    if EUR_EVENTS[eur_localFactionName] then
        for i = 0, #EUR_EVENTS[eur_localFactionName] do
            if EUR_EVENTS[eur_localFactionName][i].unlocked then
                show_button = true
            end
        end
    end
    if show_button then
        if button1 then
            if ImGui.ImageButton("events_button_1",button1.img,60,60) then
                if show_events_window == false then
                    show_events_window = true
                    if EOP_WAVS["uicah_menuclick1"] ~= nil then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                    end
                else
                    show_events_window = false
                    if EOP_WAVS["uicah_menuclick1"] ~= nil then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                    end
                end
            end
            local hovered = ImGui.IsItemHovered()
            if hovered then
                ImGui.BeginTooltip()
                if eur_event_min_cooldown > 0 then
                    ImGui.TextColored(1, 0, 0, 1, "Event cooldown: "..eur_event_min_cooldown.." turns")
                end
                if EUR_EVENTS[eur_localFactionName] then
                    for i = 0, #EUR_EVENTS[eur_localFactionName] do
                        if EUR_EVENTS[eur_localFactionName][i].active_duration > 0 then
                            ImGui.TextColored(0, 1, 0, 1,EUR_EVENTS[eur_localFactionName][i].name..", active: "..EUR_EVENTS[eur_localFactionName][i].active_duration.." turns")
                        else
                            if EUR_EVENTS[eur_localFactionName][i].active_cooldown > 0 then
                                ImGui.TextColored(0, 0, 1, 1,EUR_EVENTS[eur_localFactionName][i].name..", cooldown: "..EUR_EVENTS[eur_localFactionName][i].active_cooldown.." turns")
                            else
                                if EUR_EVENTS[eur_localFactionName][i].unlocked then
                                    ImGui.Text(EUR_EVENTS[eur_localFactionName][i].name..": Available")
                                end
                            end
                        end
                    end
                    ImGui.EndTooltip()
                end
            end
        else
            if (ImGui.Button("Events", 80, 20)) then
                if show_events_window == false then
                    show_events_window = true
                    if EOP_WAVS["uicah_menuclick1"] ~= nil then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                    end
                else
                    show_events_window = false
                    if EOP_WAVS["uicah_menuclick1"] ~= nil then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                    end
                end
            end
        end
    else
        if test1 then
            ImGui.Image(test1.img,60,60)
            local hovered = ImGui.IsItemHovered()
            if hovered then
                ImGui.BeginTooltip()
                ImGui.Text("No events available")
                ImGui.EndTooltip()
            end
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

local showtext = {
    [0] = false,
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
}
local hoveredtest = {
    [0] = false,
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
}
event_selected = {
    [0] = false,
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
}

local curr_event_selected = {
    [0] = false,
    [1] = false,
    [2] = false,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
}

local pos_x = {}
local pos_y = {}

function eventsWindow()

    ImGui.SetNextWindowPos(200*eurbackgroundWindowSizeRight, 5*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(1)
    ImGui.SetNextWindowSize(1500*eurbackgroundWindowSizeRight, 825*eurbackgroundWindowSizeBottom)
    ImGui.Begin("Events_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    if event_backgrounds[eur_player_faction.name] then
        ImGui.Image(event_backgrounds[eur_player_faction.name],1500*eurbackgroundWindowSizeRight, 815*eurbackgroundWindowSizeBottom)
    end

    ImGui.SetNextWindowPos(210*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.BeginChild("Events_window_main", 1480*eurbackgroundWindowSizeRight, 665*eurbackgroundWindowSizeBottom)
    --centeredText(eur_player_faction.localizedName .. " Events", 20)
    ImGui.NewLine()
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.BeginChild("Events_window_child_01", 900*eurbackgroundWindowSizeRight, 565*eurbackgroundWindowSizeBottom)
    if not EUR_EVENTS[eur_localFactionName] then return end
    for i = 0, #EUR_EVENTS[eur_localFactionName] do
        ImGui.SetNextWindowBgAlpha(0)
        if i == 2 then 
            ImGui.NewLine()
        elseif i > 0 then
            ImGui.SameLine()
        end
        if EUR_EVENTS[eur_localFactionName][i].unlocked then
            ImGui.BeginChild("Events_window_child_inner_" .. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            --ImGui.TextColored(1, 1, 1, 1,"img goes here")
            pos_x[i], pos_y[i] = ImGui.GetWindowPos()
            --centeredText(EUR_EVENTS[faction_name][i].name, 0)
            if EUR_EVENTS[eur_localFactionName][i].image ~= nil then
                ImGui.Image(EUR_EVENTS[eur_localFactionName][i].image.img, 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
            end

            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SetNextWindowPos(pos_x[i], pos_y[i])
            ImGui.BeginChild("Name3".. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            centeredText(EUR_EVENTS[eur_localFactionName][i].name, 0)
            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SetNextWindowPos(pos_x[i], pos_y[i])
            ImGui.BeginChild("Name2".. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)

            event_selected[i] = ImGui.Selectable("", event_selected[i], ImGuiSelectableFlags.None, 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
        
            if event_selected[i] then
                if not showtext[i] then
                    showtext[i] = true
                    event_number = i
                    if EOP_WAVS["uicah_menuclick2"] ~= nil then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick2"])
                    end
                    for j = 0, #EUR_EVENTS[eur_localFactionName] do
                        if j ~= i then
                            event_selected[j] = false
                        end
                    end
                end
            else
                showtext[i] = false
                --number = 99
            end
        
            ImGui.EndChild()
        else
            ImGui.BeginChild("Events_window_child_inner_" .. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            --ImGui.TextColored(1, 1, 1, 1,"img goes here")
            pos_x[i], pos_y[i] = ImGui.GetWindowPos()
            if EUR_EVENTS[eur_localFactionName][i].image ~= nil then
                ImGui.Image(EUR_EVENTS[eur_localFactionName][i].image.img, 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0.5)
            ImGui.SetNextWindowPos(pos_x[i], pos_y[i])
            ImGui.BeginChild("Name3".. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            centeredText(EUR_EVENTS[eur_localFactionName][i].name, 0)
            ImGui.NewLine()
            centeredText(("(Locked)"), 0)
            ImGui.NewLine()
            local hovered = ImGui.IsWindowHovered(ImGuiHoveredFlags.ChildWindows)
            if hovered then
                ImGui.NewLine()
                ImGui.BeginTooltip()
                if EUR_EVENTS[eur_localFactionName][i].active_duration > 0 then
                    ImGui.Text("Event active: "..tostring(EUR_EVENTS[eur_localFactionName][i].active_duration.." turns remaining."))
                else
                    if EUR_EVENTS[eur_localFactionName][i].locked_desc ~= nil then
                        ImGui.Text(EUR_EVENTS[eur_localFactionName][i].locked_desc)
                    end
                end
                ImGui.EndTooltip()
            end
            ImGui.EndChild()

        end
    end
    ImGui.EndChild()

    eventSideWindow(eur_localFactionName, eur_player_faction)
    ImGui.EndChild()
    if (centeredImageButton("Close", 80, 50, 0)) then
        show_events_window = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    
    eurStyle("basic_1", false)
    ImGui.End()
end
