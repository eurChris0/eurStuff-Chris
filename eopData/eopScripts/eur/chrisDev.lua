selected = false
hoveredtest = false
showtext = false

function devButton()
    ImGui.SetNextWindowPos(10*eurbackgroundWindowSizeRight, 840*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.0)
    ImGui.SetNextWindowSize(200, 200)
    ImGui.Begin("dev_button_01", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    --if ImGui.ImageButton("upgrades_button_1",button_01.img ,60,60) then
        if (ImGui.Button("console", 80, 80)) then
            M2TWEOP.toggleConsole()
            
        end
        if (ImGui.Button("reset", 80, 80)) then
            M2TWEOP.restartLua()
            print("----Lua Restart----")
        end
        ImGui.SameLine()
        if (ImGui.Button("ICM", 80, 80)) then
            in_campaign_map = true
            eurGlobalVars()
            --loadImages()
            --loadSounds()
            for i = 1, #wavs do
                if EOP_WAVS[wavs[i]] then
                    EOP_WAVS[wavs[i]] = nil
                end
            end
        end
        eurStyle("basic_1", false)
    ImGui.End()

    --ImGui.SetNextWindowPos(500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(1)
    ImGui.SetNextWindowSize(700, 500)
    ImGui.Begin("dev_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    ImGui.SetNextWindowBgAlpha(0)
    --ImGui.SetNextWindowPos(505*eurbackgroundWindowSizeRight, 505*eurbackgroundWindowSizeBottom)
    ImGui.BeginChild("Name1", 700, 300, ImGuiWindowFlags.NoInputs)
    if in_campaign_map then
        if eur_player_faction ~= nil then
            if eur_player_faction.facStrat ~= nil then
                eur_player_faction.facStrat.primaryColorRed, used1 = ImGui.VSliderInt("R", 25, 250, eur_player_faction.facStrat.primaryColorRed, 0, 255)
                ImGui.SameLine()
                eur_player_faction.facStrat.primaryColorGreen, used2 = ImGui.VSliderInt("G", 25, 250, eur_player_faction.facStrat.primaryColorGreen, 0, 255)
                ImGui.SameLine()
                eur_player_faction.facStrat.primaryColorBlue, used3 = ImGui.VSliderInt("B", 25, 250, eur_player_faction.facStrat.primaryColorBlue, 0, 255)
                ImGui.SameLine()
                eur_player_faction.facStrat.secondaryColorRed, used1 = ImGui.VSliderInt("R2", 25, 250, eur_player_faction.facStrat.secondaryColorRed, 0, 255)
                ImGui.SameLine()
                eur_player_faction.facStrat.secondaryColorGreen, used2 = ImGui.VSliderInt("G2", 25, 250, eur_player_faction.facStrat.secondaryColorGreen, 0, 255)
                ImGui.SameLine()
                eur_player_faction.facStrat.secondaryColorBlue, used3 = ImGui.VSliderInt("B2", 25, 250, eur_player_faction.facStrat.secondaryColorBlue, 0, 255)
            end
        end
    end
    ImGui.NewLine()
    for i = 1, #wavs do
        if EOP_WAVS[wavs[i]] then
            if (i % 3 == 0) then
                ImGui.NewLine()
                if (ImGui.Button(wavs[i], 150, 20)) then
                    if EOP_WAVS[wavs[i]] then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS[wavs[i]])
                    end
                end
            else
                ImGui.SameLine()
                if (ImGui.Button(wavs[i], 150, 20)) then
                    if EOP_WAVS[wavs[i]] then
                        M2TWEOPSounds.playEOPSound(EOP_WAVS[wavs[i]])
                    end
                end
            end
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

edus = {}

--[[
function onCalculateUnitValue(entry, value)
	if edus[entry.eduType] then
		print(entry.eduType)
        print(value)
	end
end
]]