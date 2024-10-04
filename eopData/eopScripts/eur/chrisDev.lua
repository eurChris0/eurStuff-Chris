selected = false
hoveredtest = false
showtext = false

temp_char_stuff = nil
show_temp_char_stuff = false

map_id = nil
map_x = 0
map_y = 0

extra_window = false
castle = false
level = 0
max = 5
setttext = "Lothlolien"

sett_names = {}

settlement_names = {
    "Elandorë",
    "Lindorlin",
    "Eärendur",
    "Calenfëanor",
    "Tirithil",
    "Amarathorn",
    "Ilmarinor",
    "Alqualmírë",
    "Galadhrim",
    "Ithildor",
    "Lothenel",
    "Aldawen",
    "Tirnanor",
    "Nimrothal",
    "Silmarion",
    "Elenithil",
    "Fëanoldëa",
    "Noldorinost",
    "Alcarindë",
    "Elenloth",
    "Calaquendi",
    "Vanyarë",
    "Mithlondir",
    "Elensûl",
    "Alduinor",
    "Fingolost",
    "Teleriand",
    "Gilthirin",
    "Tiriondë",
    "Eledhion",
    "Calenlómë",
    "Nimbrethil",
    "Taurëa",
    "Lóthendor",
    "Lindirion",
    "Aranlómë",
    "Fëanárel",
    "Lómëthil",
    "Elentirmo",
    "Anoron",
    "Lothilion",
    "Laurefindë",
    "Menelluin",
    "Galadhrel",
    "Minlaurëa",
    "Eärquendi",
    "Celebost",
    "Lauremel",
    "Nimlothion",
    "Calenfirin"
}


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
        ImGui.SameLine()
        if (ImGui.Button("Window", 80, 80)) then
            if not extra_window then
                extra_window = true
            else
                extra_window = false
            end
        end
        if (ImGui.Button("reset", 80, 80)) then
            M2TWEOP.restartLua()
            print("----Lua Restart----")
        end
        ImGui.SameLine()
        if (ImGui.Button("ICM", 80, 80)) then
            in_campaign_map = true
            eurGlobalVars()
            startLog(M2TWEOP.getModPath())
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
    if extra_window then
        --ImGui.SetNextWindowPos(500*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
        ImGui.SetNextWindowBgAlpha(1)
        ImGui.SetNextWindowSize(700, 500)
        ImGui.Begin("dev_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
        eurStyle("basic_1", true)
        ImGui.SetNextWindowBgAlpha(0)
        --ImGui.SetNextWindowPos(505*eurbackgroundWindowSizeRight, 505*eurbackgroundWindowSizeBottom)
        ImGui.BeginChild("Name1", 700, 300, ImGuiWindowFlags.NoInputs)
        --[[
        if map_id ~= nil then
            ImGui.Image(map_id, map_x, map_y)
        end
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
        ]]
        if (ImGui.BeginTabBar("dev_tabbar_1")) then
            ImGui.Separator()
            if (ImGui.BeginTabItem("dev1##01")) then
                local tile = M2TW.stratMap.getTile(map_x, map_y)
                if tile.resource ~= nil then
                    ImGui.Text(tostring(tile.resource.resourceID))
                    --tile.resource = nil
                end
                if not checkTileEmpty(map_x, map_y) then
                    ImGui.TextColored(1,0,0,1,"Invalid Tile")
                end
                ImGui.Text(tostring(map_x))
                ImGui.Text(tostring(map_y))
                if castle then
                    max = 4
                else
                    max = 5
                end
                level, levelused = ImGui.SliderInt("Level", level, 0, max)
                if (ImGui.Button("Rand", 100, 80)) then
                    local rand_nu = math.random(1, #settlement_names)
                    setttext = settlement_names[rand_nu]
                end
                setttext, selected = ImGui.InputTextWithHint("Name", "", setttext, 100)
                if tableContains(sett_names, setttext) then
                    ImGui.TextColored(1,0,0,1,"Name Taken")
                end
                castle, castlepressed = ImGui.Checkbox("Castle", castle)

                if (ImGui.Button("Add Sett", 100, 80)) then
                    if checkTileEmpty(map_x, map_y) then
                        if not tableContains(sett_names, setttext) then
                            local sett = eur_player_faction:addSettlement(map_x, map_y, setttext, level, castle)
                            if sett ~= nil then
                                sett.creatorFactionID = 1
                                table.insert(sett_names, setttext)
                                local rand_nu = math.random(1, #settlement_names)
                                setttext = settlement_names[rand_nu]
                            end
                        end
                    end
                end
                ImGui.EndTabItem()
            end
            if (ImGui.BeginTabItem("dev2##01")) then
                
                ImGui.EndTabItem()
            end
            if (ImGui.BeginTabItem("dev3##01")) then
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
                ImGui.EndTabItem()
            end
        end
        eurStyle("basic_1", false)
        ImGui.EndChild()
        ImGui.End()
    end
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

function onSettlementSelected2(eventData)
    for i = 0, 1500 do
        local eduEntry=M2TWEOPDU.getEduEntry(i);
        if eduEntry ~= nil then
            print('"'..eduEntry.eduType..'",')
        end
    end
    --eur_campaign.execScriptEvent("", "storm", eventData.settlement.xCoord, eventData.settlement.yCoord, 1, "")
    --M2TWEOP.addModelToGame("data/models_strat/residences/faction_variants/ireland/elf_castle.cas", 1)
    --stratmap.game.scriptCommand("give_everything_to_faction", "mongols ireland false")
--stratmap.game.setScriptCounter("elven_union", 1)
    --local free = M2TWEOP.isTileFree(250, 312) 
    --if free then
        --eventData.faction:addSettlement(250, 312, "lothlolienen", 5, false)
    --end
    --M2TWEOP.setModel(eventData.settlement.xCoord, eventData.settlement.yCoord, 1, 1);
    --for i = 0, eventData.settlement.army.numOfUnits - 1 do
        --local un = eventData.settlement.army:getUnit(i)
        --un.soldierCountStratMap = 1
        --un:kill()
    --end
    --eventData.settlement.ownerFaction.facStrat.canHorde = true
    --local fac1 = eur_campaign:getFaction("turks")
    --eventData.settlement:changeOwner(fac1, true)
    for i = 0, eur_campaign.numberOfFactions - 1 do
        local faction = eur_campaign:getFactionByOrder(i)
        for j = 0, faction.numOfCharacters - 1 do
            local char = faction:getCharacter(j)
            if char.characterRecord ~= nil then
                local name = char.characterRecord.label
                if string.find(name, "nazgul") then
                    if char.characterRecord.status == 0 then
                        print(char.characterRecord.label)
                        print(char.characterRecord.localizedDisplayName)
                    end
                elseif string.find(name, "z%d") then
                    if char.characterRecord.status == 0 then
                        print(char.characterRecord.label)
                        print(char.characterRecord.localizedDisplayName)
                    end
                end
            end
        end
    end
end

function onCharacterSelected2(eventData)
    local character = eventData.character.character
    local charRecord = eventData.character
    local fac1 = eur_campaign:getFaction("saxons")
    --character:switchFaction(fac1, true, true)
    for i = 0, fac1.armiesNum - 1 do
        local army = fac1:getArmy(i)
        if army.numOfUnits < 20 then
            --army:createUnit("Amanyar Riders", 3, 1, 1)
            --army:createUnit("Noldorin Veterans", 3, 1, 1)
        end
        for j = 0, army.numOfUnits - 1 do
            local unit = army:getUnit(j)
            
        end
    end
    print("open")
    temp_char_stuff = eventData.character
    show_temp_char_stuff = true
end

function onClickAtTile(x,y)
	map_x = x
    map_y = y
    print("clicked")
end

function onFactionTurnEnd2(eventData)
    local fac = eventData.faction;
    if (fac:getFactionName() == "saxons") then
    -- find who has a lesser ring and who has abilities
    for i = 0, fac.numOfCharacters-1, 1 do
        cha = fac:getCharacter(i);
        if cha:getTypeID() == 7 then
            namedCha = cha.namedCharacter;
            if cha.bodyguards.eduEntry.Type == "Calaquendi" then
                if cha.bodyguards.exp > 6 then
                    setBodyguard(cha, ("Eregion Smiths"), 3, 3, 3, "")
                elseif hasTrait(namedCha, "Lindar") then
                    local random_value = math.random(1, 6);
                    setBodyguard(cha, (lindar_units[random_value]), 3, 3, 3, "")
                elseif hasTrait(namedCha, "Sindar") then
                    local random_value = math.random(1, 6);
                    setBodyguard(cha, (sindar_units[random_value]), 3, 3, 3, "")
                elseif hasTrait(namedCha, "Noldor") then
                    local random_value = math.random(1, 4);
                    setBodyguard(cha, (noldor_units[random_value]), 3, 3, 3, "")
                end
            end
        end    
    end
end
end

