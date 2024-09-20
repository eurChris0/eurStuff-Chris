
function optionsButton()
    ImGui.SetNextWindowPos(1320*eurbackgroundWindowSizeRight, 770*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.0)
    ImGui.SetNextWindowSize(82, 22)
    ImGui.Begin("options_button_01", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    --if ImGui.ImageButton("upgrades_button_1",button_01.img ,60,60) then
    if (ImGui.Button("Options", 80, 20)) then
        if show_options_window == false then
            show_options_window = true
        else
            show_options_window = false
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

function optionsWindow()
    --ImGui.SetNextWindowPos(200*eurbackgroundWindowSizeRight, 50*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(1)
    ImGui.SetNextWindowSize(500, 500)
    ImGui.Begin("options_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    options_replen, pressed = ImGui.Checkbox("Replenishment", options_replen)
    options_poe, pressed = ImGui.Checkbox("Passing of the Elves", options_poe)
    options_merge, pressed = ImGui.Checkbox("AI army merging", options_merge)
    options_sort, pressed = ImGui.Checkbox("Auto unit sorting", options_sort)
    options_prepost_save, pressed = ImGui.Checkbox("Pre/Post battle save", options_prepost_save)
    
    sort_order.a, clicked = ImGui.Combo("First", sort_order.a, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
    sort_order.b, clicked2 = ImGui.Combo("Second", sort_order.b, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)
    sort_order.c, clicked3 = ImGui.Combo("Third", sort_order.c, {"EDU Name", "Category(eg infantry)", "Class(eg heavy)", "Soldier Count", "Experience", "Category + Class", "AI unit value"}, 7, 8)

    eurStyle("basic_1", false)
    ImGui.End()
end