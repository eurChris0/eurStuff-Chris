in_campaign_map = false

local old_list = {
    [1]={["unit"]="Bow Quendi",["upgrade"]="Spear Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [2]={["unit"]="Bow Quendi",["upgrade"]="Sword Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [3]={["unit"]="Dunedain Rangers",["upgrade"]="Dunedain Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [4]={["unit"]="Dunedain Rangers",["upgrade"]="Dunedain Steelbowmen",["experience"]=7,["cost"]=1,["event"]=""},
    [5]={["unit"]="Dunedain Wardens",["upgrade"]="Dunedain Rangers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [6]={["unit"]="Dunedain Wardens",["upgrade"]="Dunedain Armsmen",["experience"]=5,["cost"]=1,["event"]=""},
    [7]={["unit"]="Dunedain Wardens",["upgrade"]="Dunedain Axemen",["experience"]=7,["cost"]=1,["event"]=""},
    [8]={["unit"]="Elder Council",["upgrade"]="Elvenkings Bowguard",["experience"]=7,["cost"]=1,["event"]=""},
    [9]={["unit"]="Elder Council",["upgrade"]="Elvenkings Axeguard",["experience"]=7,["cost"]=1,["event"]=""},
    [10]={["unit"]="Elder Council",["upgrade"]="Elvenking's Palace Guard",["experience"]=9,["cost"]=1,["event"]=""},
    [11]={["unit"]="Elven Bow Stagriders",["upgrade"]="Heavy Spear Stagriders",["experience"]=9,["cost"]=1,["event"]=""},
    [12]={["unit"]="Ent Catapult",["upgrade"]="Ents",["experience"]=2,["cost"]=0.5,["event"]=""},
    [13]={["unit"]="Ents",["upgrade"]="Ent Catapult",["experience"]=2,["cost"]=0.5,["event"]=""},
    [14]={["unit"]="Eored Axemen",["upgrade"]="Eored Footmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [15]={["unit"]="Eored Axemen",["upgrade"]="Eored Swordsmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [16]={["unit"]="Eored Footmen",["upgrade"]="Eored Axemen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [17]={["unit"]="Eored Footmen",["upgrade"]="Eored Swordsmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [18]={["unit"]="Eored Footmen",["upgrade"]="Golden Hall Spearmen",["experience"]=7,["cost"]=1,["event"]=""},
    [19]={["unit"]="Eored Swordsmen",["upgrade"]="Eored Axemen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [20]={["unit"]="Eored Swordsmen",["upgrade"]="Eored Footmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [21]={["unit"]="Eored Swordsmen",["upgrade"]="Golden Hall Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [22]={["unit"]="Eorling Archers",["upgrade"]="Eorling Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [23]={["unit"]="Eorling Archers",["upgrade"]="Helmingas",["experience"]=7,["cost"]=1,["event"]=""},
    [24]={["unit"]="Eorling Spearmen",["upgrade"]="Eorling Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [25]={["unit"]="Eorling Spearmen",["upgrade"]="Eored Footmen",["experience"]=5,["cost"]=1,["event"]=""},
    [26]={["unit"]="Gurdhinen",["upgrade"]="Galadhrim Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [27]={["unit"]="Hitherbin",["upgrade"]="Galadhrim Cavalry",["experience"]=7,["cost"]=1,["event"]=""},
    [28]={["unit"]="Lorien Archers",["upgrade"]="Lothlorien Marchwardens",["experience"]=7,["cost"]=1,["event"]=""},
    [29]={["unit"]="Lorien Archers",["upgrade"]="Lorien Warders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [30]={["unit"]="Lorien Archers",["upgrade"]="Lorien Sentries",["experience"]=2,["cost"]=0.5,["event"]=""},
    [31]={["unit"]="Lorien Scouts",["upgrade"]="Hitherbin",["experience"]=9,["cost"]=1,["event"]=""},
    [32]={["unit"]="Lorien Sentries",["upgrade"]="Sentinels of Cerin Amroth",["experience"]=7,["cost"]=1,["event"]=""},
    [33]={["unit"]="Lorien Sentries",["upgrade"]="Lorien Warders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [34]={["unit"]="Lorien Sentries",["upgrade"]="Lorien Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [35]={["unit"]="Lorien Warders",["upgrade"]="Lorien Sentries",["experience"]=2,["cost"]=0.5,["event"]=""},
    [36]={["unit"]="Lorien Warders",["upgrade"]="Lorien Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [37]={["unit"]="Lorien Warders",["upgrade"]="Sentinels of Cerin Amroth",["experience"]=7,["cost"]=1,["event"]=""},
    [38]={["unit"]="Lothlorien Marchwardens",["upgrade"]="Galadhrim Archers",["experience"]=5,["cost"]=0.5,["event"]=""},
    [39]={["unit"]="Maethyr i-Thewair",["upgrade"]="Elvenkings Axeguard",["experience"]=7,["cost"]=1,["event"]=""},
    [40]={["unit"]="Rohirrim",["upgrade"]="Rohirrim Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [41]={["unit"]="Rohirrim",["upgrade"]="Riddermark Cavalry",["experience"]=5,["cost"]=1,["event"]=""},
    [42]={["unit"]="Rohirrim",["upgrade"]="Eored Lancers",["experience"]=5,["cost"]=1,["event"]=""},
    [43]={["unit"]="Rohirrim Archers",["upgrade"]="Rohirrim",["experience"]=2,["cost"]=0.5,["event"]=""},
    [44]={["unit"]="Rohirrim Archers",["upgrade"]="Eored Skirmishers",["experience"]=5,["cost"]=1,["event"]=""},
    [45]={["unit"]="Rohirrim Archers",["upgrade"]="Riders of the Fold",["experience"]=7,["cost"]=1,["event"]=""},
    [46]={["unit"]="Sentinels of Cerin Amroth",["upgrade"]="Galadhrim Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [47]={["unit"]="Spear Quendi",["upgrade"]="Bow Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [48]={["unit"]="Spear Quendi",["upgrade"]="Spear Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [49]={["unit"]="Sword Quendi",["upgrade"]="Bow Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [50]={["unit"]="Sword Quendi",["upgrade"]="Spear Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [51]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [52]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [53]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [54]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Sentinels",["experience"]=7,["cost"]=1,["event"]=""},
    [55]={["unit"]="Woodland Sentinels",["upgrade"]="Elvenkings Bowguard",["experience"]=7,["cost"]=1,["event"]=""},
    [56]={["unit"]="Woodland Spearmen",["upgrade"]="Woodland Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [57]={["unit"]="Woodland Spearmen",["upgrade"]="Woodland Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [58]={["unit"]="Woodland Spearmen",["upgrade"]="Woodland Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [59]={["unit"]="Woodland Spearmen",["upgrade"]="Elvenking's Spearguard",["experience"]=9,["cost"]=1,["event"]=""},
    [60]={["unit"]="Woodland Wardens",["upgrade"]="Woodland Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [61]={["unit"]="Woodland Wardens",["upgrade"]="Woodland Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [62]={["unit"]="Woodland Wardens",["upgrade"]="Woodland Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [63]={["unit"]="Woodland Wardens",["upgrade"]="Elvenkings Axeguard",["experience"]=9,["cost"]=1,["event"]=""},
    [64]={["unit"]="Woodland Warriors",["upgrade"]="Woodland Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [65]={["unit"]="Woodland Warriors",["upgrade"]="Woodland Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [66]={["unit"]="Woodland Warriors",["upgrade"]="Woodland Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [67]={["unit"]="Woodland Warriors",["upgrade"]="Maethyr i-Thewair",["experience"]=7,["cost"]=1,["event"]=""}
  }
  
   
  local unit_names = {}

  local UNIT_UPGRADES = {}
  for i = 1, #old_list do
    if not UNIT_UPGRADES[old_list[i]["unit"]] then
      UNIT_UPGRADES[old_list[i]["unit"]] = {
        unit = {},
        expRequirement = {},
        cost_multi = {},
        counter = {"", "",},
      }
    end
    table.insert(UNIT_UPGRADES[old_list[i]["unit"]].unit, old_list[i]["upgrade"])
    table.insert(UNIT_UPGRADES[old_list[i]["unit"]].expRequirement, old_list[i]["experience"])
    table.insert(UNIT_UPGRADES[old_list[i]["unit"]].cost_multi, old_list[i]["cost"])
    table.insert(UNIT_UPGRADES[old_list[i]["unit"]].counter, old_list[i]["event"])
  end

function upgradeButton()
    local UI_MANAGER = gameDataAll.get().uiCardManager
    local faction_id = M2TWEOP.getLocalFactionID()
    local scroll_unit = UI_MANAGER.getUnitInfoScroll()
    --print(unit.unit.eduEntry.eduType)
    if scroll_unit ~= nil then
        if scroll_unit.unit ~= nil then
            unit = scroll_unit.unit
            --print(unit.eduEntry.eduType)
            --local UI_MANAGER = gameDataAll.get().uiCardManager
            --if UI_MANAGER.selectedUnitCardsCount == 0 then return end
            if unit.army ~= nil then
                if unit.army.faction.factionID ~= faction_id then 
                    show_upgrade_window = false
                    return end
                if unit.army:findInFort() or unit.army:findInSettlement() then
                    if not UNIT_UPGRADES[unit.eduEntry.eduType] then show_upgrade_window = false return end
                    local owner_check = 0
                    for j = 1, #UNIT_UPGRADES[unit.eduEntry.eduType].unit do
                        local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[j])
                        owner_check = owner_check+eduEntry:hasOwnership(faction_id)
                    end
                    if owner_check == 0 then show_upgrade_window = false return end
                    ImGui.SetNextWindowPos(10*eurbackgroundWindowSizeRight, 250*eurbackgroundWindowSizeBottom)
                    ImGui.SetNextWindowBgAlpha(0.0)
                    ImGui.Begin("Upgrades", true, bit.bor(ImGuiWindowFlags.NoDecoration))
                    ImGui.PushStyleVar(ImGuiStyleVar.WindowPadding, 0.1, 0.1)
                    ImGui.PushStyleColor(ImGuiCol.Button, 1, 1, 1, 0.1)
                    ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.5)
                    ImGui.PushStyleColor(ImGuiCol.ButtonActive, 1, 1, 1, 0.5)
                    ImGui.PushStyleColor(ImGuiCol.Border, 0, 0, 0, 0)
                    size_x, size_y = ImGui.GetWindowSize()
                    if not UNIT_UPGRADES[unit.eduEntry.eduType] then
                        --ImGui.Image(button_02.img, 80, 80)
                        --ImGui.SetWindowSize(0, 0)
                        --show_upgrade_window = false
                    else
                        if ImGui.ImageButton("upgrades_button_1",button_01.img ,60,60) then
                        --if (ImGui.Button("Upgrades", 80, 20)) then
                            if show_upgrade_window == false then
                                show_upgrade_window = true
                            else
                                show_upgrade_window = false
                            end
                        end
                    end
                end
            end
        end
    end
    ImGui.EndChild()
    ImGui.PopStyleVar()
    ImGui.PopStyleColor(4)
    ImGui.End()
end

function upgradeWindow()
    local UI_MANAGER = gameDataAll.get().uiCardManager
    local faction_id = M2TWEOP.getLocalFactionID()
    scroll_unit = UI_MANAGER.getUnitInfoScroll()
    if scroll_unit.unit ~= nil then
        unit = scroll_unit.unit
        if unit.army ~= nil then
            if unit.army.faction.factionID ~= faction_id then 
                show_upgrade_window = false
            return end
            if unit.army:findInFort() or unit.army:findInSettlement() then
                ImGui.SetNextWindowPos(75*eurbackgroundWindowSizeRight, 75*eurbackgroundWindowSizeBottom)
                ImGui.SetNextWindowBgAlpha(0.0)
                ImGui.Begin("Upgrades2", true, bit.bor(ImGuiWindowFlags.NoDecoration))
                ImGui.PushStyleColor(ImGuiCol.Button, 0.2, 0.2, 0.2, 0.2)
                ImGui.PushStyleColor(ImGuiCol.Text, 0.2, 0.2, 0.2, 1)
                ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.5)
                ImGui.PushStyleColor(ImGuiCol.ButtonActive, 1, 1, 1, 0.5)
                size_x, size_y = ImGui.GetWindowSize()
                ImGui.Image(scroll_bg.img, 700*eurbackgroundWindowSizeRight, 350*eurbackgroundWindowSizeBottom)
                ImGui.SetNextWindowPos(100*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
                ImGui.SetNextWindowBgAlpha(0.0)
                if not UNIT_UPGRADES[unit.eduEntry.eduType] then
                    return
                end
                ImGui.BeginChild("Child Window##A12", 700*eurbackgroundWindowSizeRight, 350*eurbackgroundWindowSizeBottom)
                ImGui.PushStyleVar(ImGuiStyleVar.WindowPadding, 0.2, 0.1)
                --upgradeWindowAlways, pressed = ImGui.Checkbox("Pin", upgradeWindowAlways)
                ImGui.TextColored(0.2, 0.2, 0.2, 1,"The following units are available to upgrade:")
                for j = 1, #UNIT_UPGRADES[unit.eduEntry.eduType].unit do
                    local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[j])
                    if eduEntry:hasOwnership(faction_id) > 0 then
                        local check_counter = checkCounter(UNIT_UPGRADES[unit.eduEntry.eduType].counter[j])
                        if check_counter == true then
                            ImGui.TextColored(0.2, 0.2, 0.2, 1,
                                "- " ..
                                    UNIT_UPGRADES[unit.eduEntry.eduType].unit[j] ..
                                        ", " .. "Gold: " .. tostring(math.ceil((eduEntry.recruitCost * UNIT_UPGRADES[unit.eduEntry.eduType].cost_multi[j]))) .. ", Rank: " ..
                                            tostring(UNIT_UPGRADES[unit.eduEntry.eduType].expRequirement[j])
                            )
                        end
                    end
                end
                for j = 1, #UNIT_UPGRADES[unit.eduEntry.eduType].unit do
                    local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[j]) 
                    if eduEntry:hasOwnership(faction_id) > 0 then
                        local unit_tga = eduEntry.unitCardTga
                        unit_tga = string.gsub(unit_tga, "#", "")
                        unit_tga = string.gsub(unit_tga, ".tga", "")
                        unit_tga = string.lower(unit_tga)
                        if eur_tga_table[unit_tga] ~= nil then
                            ImGui.Image(eur_tga_table[unit_tga].img, 80, 80)
                            ImGui.SameLine()
                        end
                    end
                end
                ImGui.NewLine()
                for i = 1, #UNIT_UPGRADES[unit.eduEntry.eduType].unit do
                    if unit.character ~= nil then
                        return
                    end
                    if UNIT_UPGRADES[unit.eduEntry.eduType].unit[i] ~= nil then
                        local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[i])
                        if eduEntry:hasOwnership(faction_id) > 0 then
                            local check_counter = checkCounter(UNIT_UPGRADES[unit.eduEntry.eduType].counter[i])
                            if check_counter == true then
                                local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[i])
                                local unit_cost =
                                    math.ceil((eduEntry.recruitCost * UNIT_UPGRADES[unit.eduEntry.eduType].cost_multi[i]))
                                    if unit.army.faction.money >= unit_cost then
                                    -----local unitSize = getUnitSizeMult()
                                    local exp_req = UNIT_UPGRADES[unit.eduEntry.eduType].expRequirement[i]
                                    local message =
                                        "Upgrade to " ..
                                        UNIT_UPGRADES[unit.eduEntry.eduType].unit[i] ..
                                            " for " .. tostring(unit_cost) .. " gold."
                                    if unit.exp >= exp_req then
                                        local clicked = ImGui.Button(message)
                                        if (clicked == true) then
                                            show_upgrade_button = false
                                            show_upgrade_window = false
                                            local upgradeName = UNIT_UPGRADES[unit.eduEntry.eduType].unit[i]
                                            --if unit.armourLVL > 0 then
                                            --    unit_armour = (unit.armourLVL - 1)
                                            --else unit_armour = unit.armourLVL
                                            --end
                                            local old_unit_army = unit.army
                                            local old_unit_exp = unit.exp
                                            local old_unit_sol = unit.soldierCountStratMap
                                            local old_unit_solmax = unit.soldierCountStratMapMax
                                            local old_unit_edu = unit.eduEntry.eduType
                                            local old_unit_weapon = unit.weaponLVL

                                            unit:kill()
                                            print(
                                                "new unit " ..
                                                    old_unit_edu .. " " .. UNIT_UPGRADES[old_unit_edu].expRequirement[i]
                                            )
                                            local upgradeUnit =
                                                old_unit_army:createUnit(
                                                upgradeName,
                                                (old_unit_exp - UNIT_UPGRADES[old_unit_edu].expRequirement[i]),
                                                0,
                                                old_unit_weapon
                                            )
                                            if old_unit_sol < old_unit_solmax then
                                                upgradeUnit.soldierCountStratMap =
                                                    math.min(upgradeUnit.soldierCountStratMapMax, old_unit_sol)
                                            end

                                            -----print("replacing "..unit.eduEntry.eduType.." with "..UNIT_UPGRADES[unit.eduEntry.eduType].unit[i])
                                            -----unit.eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[i])
                                            -----unit.soldierCountStratMap = math.min(unit.soldierCountStratMap, unit.eduEntry.soldierCount * unitSize)
                                            -----unit.exp = (unit.exp - exp_req)

                                            stratmap.game.callConsole("add_money", "-" .. tostring(unit_cost))
                                            return
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    ImGui.EndChild()
    ImGui.PopStyleVar()
    ImGui.PopStyleColor(4)
    ImGui.End()
end
