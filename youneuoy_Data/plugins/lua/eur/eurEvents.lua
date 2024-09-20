require('eur/eurEvent/eurEventsFunc')
require('eur/eurEvent/eurEventsVars')
require('eur/eurEvent/eurEventImGiuWindows')

function eventsButton()
    ImGui.SetNextWindowPos(1490*eurbackgroundWindowSizeRight, 840*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.0)
    ImGui.SetNextWindowSize(80, 80)
    ImGui.Begin("Events_button_01", true, bit.bor(ImGuiWindowFlags.NoDecoration,ImGuiWindowFlags.NoBackground))
    eurStyle("basic_1", true)
    if button1 then
        if ImGui.ImageButton("events_button_1",button1.img,60,60) then
            if show_events_window == false then
                show_events_window = true
            else
                show_events_window = false
            end
        end
    else
        if (ImGui.Button("Events", 80, 20)) then
            if show_events_window == false then
                show_events_window = true
            else
                show_events_window = false
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

    local campaign = gameDataAll.get().campaignStruct
    local faction_id = M2TWEOP.getLocalFactionID()
    local faction = campaign.factionsSortedByID[faction_id + 1]
    local faction_name = faction.name

    ImGui.PushFont(font_RINGM)

    ImGui.SetNextWindowPos(200*eurbackgroundWindowSizeRight, 10*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.SetNextWindowSize(1520*eurbackgroundWindowSizeRight, 750*eurbackgroundWindowSizeBottom)
    ImGui.Begin("Events_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    --ImGui.Image(test.img, 700*eurbackgroundWindowSizeRight, 350*eurbackgroundWindowSizeBottom)
    --ImGui.Image(test2.img, 1520*eurbackgroundWindowSizeRight, 750*eurbackgroundWindowSizeBottom)

    ImGui.SetNextWindowPos(200*eurbackgroundWindowSizeRight, 10*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.5)
    ImGui.BeginChild("Events_window_main", 1520*eurbackgroundWindowSizeRight, 750*eurbackgroundWindowSizeBottom)
    centeredText(faction.localizedName .. " Events", 20)
    ImGui.NewLine()
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.BeginChild("Events_window_child_01", 900*eurbackgroundWindowSizeRight, 600*eurbackgroundWindowSizeBottom)
    if not EUR_EVENTS[faction_name] then return end
    for i = 0, #EUR_EVENTS[faction_name] do
        ImGui.SetNextWindowBgAlpha(0)
        if i == 2 then 
            ImGui.NewLine()
        elseif i > 0 then
            ImGui.SameLine()
        end
        if EUR_EVENTS[faction_name][i].unlocked then
            ImGui.BeginChild("Events_window_child_inner_" .. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            --ImGui.TextColored(1, 1, 1, 1,"img goes here")
            pos_x[i], pos_y[i] = ImGui.GetWindowPos()
            --centeredText(EUR_EVENTS[faction_name][i].name, 0)
            if EUR_EVENTS[faction_name][i].image ~= nil then
                ImGui.Image(EUR_EVENTS[faction_name][i].image.img, 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
            end

            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SetNextWindowPos(pos_x[i], pos_y[i])
            ImGui.BeginChild("Name3".. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            centeredText(EUR_EVENTS[faction_name][i].name, 0)
            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SetNextWindowPos(pos_x[i], pos_y[i])
            ImGui.BeginChild("Name2".. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)

            event_selected[i] = ImGui.Selectable("", event_selected[i], ImGuiSelectableFlags.None, 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
        
            if event_selected[i] then
                if not showtext[i] then
                    showtext[i] = true
                    event_number = i
                    for j = 0, #EUR_EVENTS[faction_name] do
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
            if EUR_EVENTS[faction_name][i].image ~= nil then
                ImGui.Image(EUR_EVENTS[faction_name][i].image.img, 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
            end
            ImGui.EndChild()

            ImGui.SetNextWindowBgAlpha(0)
            ImGui.SetNextWindowPos(pos_x[i], pos_y[i])
            ImGui.BeginChild("Name3".. tostring(i), 250*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
            centeredText(EUR_EVENTS[faction_name][i].name, 0)
            ImGui.NewLine()
            centeredText(("(Locked)"), 0)
            ImGui.NewLine()
            local hovered = ImGui.IsWindowHovered(ImGuiHoveredFlags.ChildWindows)
            if hovered then
                ImGui.NewLine()
                ImGui.BeginTooltip()
                ImGui.Text(EUR_EVENTS[faction_name][i].locked_desc)
                ImGui.EndTooltip()
            end
            ImGui.EndChild()

        end
    end
    ImGui.EndChild()

    eventSideWindow(faction_name, faction)
    if (centeredImageButton("close", 100, 20, 0)) then
        show_events_window = false
    end

    ImGui.EndChild()
    eurStyle("basic_1", false)
    ImGui.PopFont()
    ImGui.End()
end
