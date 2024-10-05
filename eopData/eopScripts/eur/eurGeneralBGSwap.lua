temp_gen_units_target = 0
temp_gen_units_target_clicked = false
temp_gen_units = {}

temp_gen_units = {}

guard_add = 0
temp_used = false

gen_rank_char = nil
gen_units_char = nil

default_general_units = {
    ["milan"] = {
        old = "Rohan Bodyguard",
        new = "Rohirrim",
    },
    ["sicily"] = {
        old = "Gondor Bodyguard",
        new = "Territorial Guardsmen",
    },
    ["turks"] = {
        old = "Dunedain Bodyguard",
        new = "Dunedain Rangers",
    },
    ["russia"] = {
        old = "Pharazim Nobles",
        new = "Belegaer Footmen",
    },
    ["scotland"] = {
        old = "Royal Guardsmen",
        new = "Dalian Swordsmen",
    },
    ["byzantium"] = {
        old = "High Paladins",
        new = "Thorn Bladesmen",
    },
    ["timurids"] = {
        old = "Skin-Changers",
        new = "Vale Archers",
    },
    ["portugal"] = {
        old = "Angmar Bodyguards",
        new = "Angmarim Infantry",
    },
    ["aztecs"] = {
        old = "Brenin's Guard",
        new = "Clan Spearmen",
    },
    ["teutonic_order"] = {
        old = "Clan Heralds",
        new = "Keefei Huntsmen",
    },
    ["spain"] = {
        old = "Black Snake Guard",
        new = "Southron Warband",
    },
    ["khand"] = {
        old = "Variag Nobles",
        new = "Nomad Horsemen",
    },
    ["venice"] = {
        old = "Loke Rim Bodyguard",
        new = "Claw-Guard",
    },
    ["norway"] = {
        old = "Zenith Guard",
        new = "Khazad Sentries",
    },
    ["hungary"] = {
        old = "Tumunzahar Nobles",
        new = "Ered Luin Militia",
    },
    ["moors"] = {
        old = "Durins Guard",
        new = "Erebor Infantry",
    },
    ["mongols"] = {
        old = "Tawar Areiniyr",
        new = "Woodland Spearmen",
    },
    ["ireland"] = {
        old = "Elbereths Sentinels",
        new = "Lorien Warders",
    },
    ["denmark"] = {
        old = "Calaquendi Lords",
        new = "Lindar Guards",
    },
    ["england"] = {
        old = "Uruk Bodyguard",
        new = "Orc Raiders",
    },
    ["poland"] = {
        old = "Mirkwood Bodyguard",
        new = "Dol Guldur Archers",
    },
    ["hre"] = {
        old = "Goblin Bodyguards",
        new = "Goblin Band",
    },
    ["gundabad"] = {
        old = "Mountain Guard",
        new = "Snow-Orc Raiders",
    },
    ["france"] = {
        old = "Uruk-hai Bodyguards",
        new = "Uruk-hai Raiders",
    },
}

gen_units_list = {
    ["T1"] = {
        [0] = "Gondor Militia",
        [1] = "Gondor Archer Militia",
        [2] = "Gondor Cavalry Militia",
        [3] = "Territorial Guardsmen",
        [4] = "Dunedain Wardens",
        [5] = "Dunedain Rangers",
        [6] = "Belegaer Footmen",
        [7] = "Belegaer Pikemen",
        [8] = "Belegaer Archers",
        [9] = "Eorling Spearmen",
        [10] = "Eorling Archers",
        [11] = "Rohirrim",
        [12] = "Rohirrim Archers",
        [13] = "Dalian Swordsmen",
        [14] = "Dale Cavalry",
        [15] = "Thorn Bladesmen",
        [16] = "Thorn Crossbowmen",
        [17] = "Thorn Riders",
        [18] = "Vale Archers",
        [19] = "Woodman Warriors",
        [20] = "Woodman Defenders",
        [21] = "Woodman Hunters",
        [22] = "Angmarim Infantry",
        [23] = "Angmarim Archers",
        [24] = "Clan Spearmen",
        [25] = "Clan Hunters",
        [26] = "Mordag Fishermen",
        [27] = "Faolan Borderguard",
        [28] = "Southron Warband",
        [29] = "Southron Pikemen",
        [30] = "Southron Archers",
        [31] = "Southron Lancers",
        [32] = "Nomad Warriors",
        [33] = "Nomad Horsemen",
        [34] = "Khazad Sentries",
        [35] = "Ered Luin Militia",
        [36] = "Ered Luin Pikemen",
        [37] = "Ered Luin Scouts",
        [38] = "Erebor Infantry",
        [39] = "Erebor Axethrowers",
        [40] = "Woodland Spearmen",
        [41] = "Woodland Warriors",
        [42] = "Woodland Wardens",
        [43] = "Woodland Scouts",
        [44] = "Lorien Warders",
        [45] = "Lorien Sentries",
        [46] = "Lorien Archers",
        [47] = "Lorien Scouts",
        [48] = "Lindar Guards",
        [49] = "Lindar Mariners",
        [50] = "Lindon Longspears",
        [51] = "Lindar Bowmen",
        [52] = "Orc Raiders",
        [53] = "Orc Band",
        [54] = "Orc Scouts",
        [55] = "Dol Guldur Host",
        [56] = "Dol Guldur Scouts",
        [57] = "Dol Guldur Archers",
        [58] = "Goblin Infantry",
        [59] = "Goblin Band",
        [60] = "Goblin Archers",
        [61] = "Snow-Orc Raiders",
        [62] = "Snow-Orc Spearmen",
        [63] = "Snow-Orc Scouts",
        [64] = "Uruk-hai Raiders",
        [65] = "Uruk-hai Archers",
        [66] = "Eregion Spear Quendi",
        [67] = "Eregion Sword Quendi",
        [68] = "Eregion Mounted Quendi",
        [69] = "Mounted Quendi",
        [70] = "Sword Quendi",
        [71] = "Spear Quendi",
        [72] = "Bow Quendi",
        [73] = "Rhunnic Warriors",
        [74] = "Rhunnic Bowmen",
    },
    ["T2"] = {
        [0] = "Gondor Spearmen",
        [1] = "Gondor Infantry",
        [2] = "Gondor Pikemen",
        [3] = "Gondor Archers",
        [4] = "Gondor Cavalry",
        [5] = "Dunedain Armsmen",
        [6] = "Dunedain Scouts",
        [7] = "Sworn Horsemen",
        [8] = "Numenorean Shieldguard",
        [9] = "Numenorean Marksmen",
        [10] = "Riddermark Cavalry",
        [11] = "Eored Lancers",
        [12] = "Eored Skirmishers",
        [13] = "Dale Swordmasters",
        [14] = "Barding Marksmen",
        [15] = "Regent Axeguard",
        [16] = "Regent Spearguard",
        [17] = "Regent Bowguard",
        [18] = "Beorning Defenders",
        [19] = "Beorning Spearmen",
        [20] = "Greenwood Foresters",
        [21] = "Iron Crown Warriors",
        [22] = "Iron Crown Halberdiers",
        [23] = "Iron Crown Longbowmen",
        [24] = "Warband Host",
        [25] = "Warband Blades",
        [26] = "Enedwaith Guardsmen",
        [27] = "Enedwaith Marksmen",
        [28] = "Hasharii Blades",
        [29] = "Hasharii Shadows",
        [30] = "Variag Swordsmen",
        [31] = "Variag Bowmen",
        [32] = "Variag Horse Archers",
        [33] = "Loke-Rim Spearmen",
        [34] = "Loke-Rim Archers",
        [35] = "Legion Shieldguard",
        [36] = "Legion Crossbows",
        [37] = "Longbeard Phalanx",
        [38] = "Longbeard Swordsmen",
        [39] = "Longbeard Crossbows",
        [40] = "Kings Axes",
        [41] = "Kings Warriors",
        [42] = "Kings Shields",
        [43] = "Iron Crossbowmen",
        [44] = "Elder Council",
        [45] = "Woodland Sentinels",
        [46] = "Sentinels of Cerin Amroth",
        [47] = "Yavannas Chosen",
        [48] = "Lothlorien Marchwardens",
        [49] = "Sindar Spearmen",
        [50] = "Sindar Archers",
        [51] = "Amanyar Riders",
        [52] = "Amanyar Rangers",
        [53] = "Black Uruks",
        [54] = "Black Uruk Halberds",
        [55] = "Black Uruk Archers",
        [56] = "Mirkwood Slayers",
        [57] = "Mirkwood Spears",
        [58] = "Mirkwood Archers",
        [59] = "Black Pit Infantry",
        [60] = "Black Pit Spears",
        [61] = "Black Pit Halberd",
        [62] = "Black Pit Archers",
        [63] = "Black Pit Crossbows",
        [64] = "Blackshield Warband",
        [65] = "Blackshield Warriors",
        [66] = "Blackshield Halberds",
        [67] = "Blackshield Archers",
        [68] = "Uruk-hai Infantry",
        [69] = "Uruk-hai Pikemen",
        [70] = "Uruk-hai Crossbow",
    },
    ["T3"] = {
        [0] = "Rohan Bodyguard",
        [1] = "Guard of the Golden Hall",
        [2] = "Shieldmaidens of Rohan",
        [3] = "Earls",
        [4] = "Barons",
        [5] = "Northguard",
        [6] = "Wulfguard Axemen",
        [7] = "Wulfguard Pikes",
        [8] = "Serpent Guard",
        [9] = "Serpent Archers",
        [10] = "Khand Elite Spearmen",
        [11] = "Khand Elite Lancers",
        [12] = "Dragon-Wrath Crossbowmen",
        [13] = "Dragon-Wrath Kataphracts",
        [14] = "Legion Deeping Guard",
        [15] = "Blacklock Engineers",
        [16] = "King's Mounted Hammerguard",
        [17] = "Arthirochon",
        [18] = "Hitherbin",
        [19] = "Noldorin Defenders",
        [20] = "Noldorin Archers",
        [21] = "Khamuls Shadowguard",
        [22] = "Khamuls Shadow Rangers",
        [23] = "Azogs Defilers",
        [24] = "Noldor Honourguard",
        [25] = "Temple Wards",
        [26] = "Khand Elite Horse Archers",
        [27] = "Darkblades",
        [28] = "Guardians of Carn Dum",
        [29] = "Citadel Guard",
        [30] = "Marksmen of Cair Andros",
        [31] = "Dunedain Steelbowmen",
        [32] = "Dismounted Fornost-Erain Knights",
        [33] = "Naru n'Aru Royal Guard",
        [34] = "Naru n'Aru Sentinels",
        [35] = "Gondor Bodyguard",
        [36] = "Dunedain Bodyguard",
        [37] = "Pharazim Nobles",
        [38] = "Royal Guardsmen",
        [39] = "High Paladins",
        [40] = "Skin-Changers",
        [41] = "Angmar Bodyguards",
        [42] = "Brenin's Guard",
        [43] = "Clan Heralds",
        [44] = "Black Snake Guard",
        [45] = "Variag Nobles",
        [46] = "Loke Rim Bodyguard",
        [47] = "Zenith Guard",
        [48] = "Tumunzahar Nobles",
        [49] = "Durins Guard",
        [50] = "Tawar Areiniyr",
        [51] = "Elbereths Sentinels",
        [52] = "Calaquendi Lords",
        [53] = "Uruk Bodyguard",
        [54] = "Mirkwood Bodyguard",
        [55] = "Goblin Bodyguards",
        [56] = "Mountain Guard",
        [57] = "Uruk-hai Bodyguards",
    },
}

general_label_list = {
"denethor_1",
"boromir_1",
"angbor_1",
"faramir_1",
"dinenion_1",
"duinhir_1",
"forlong_1",
"golasgil_1",
"hirluin_1",
"hurin_1",
"iorthon_1",
"orodreth_1",
"baragund_1",
"istion_1",
"mistven_1",
"adrahil_1",
"imrahil_1",
"cirdan_1",
"theoden_1",
"eomer_1",
"barliman_1",
"breeheir_1",
"alf_1",
"brathor1",
"bilbo_1",
"paladin_1",
"wil_1",
"aragorn_1",
"halbarad_1",
"radagast",
"balin_1",
"elrond_1",
"elladan_1",
"elrohir_1",
"gildor_1",
"celeborn_1",
"haldir_1",
"thranduil_1",
"legolas_1",
"family_rhun1",
"rhunheir_1",
"sauron_1",
"gothmog_1",
"z1",
"z2",
"z3",
"z7",
"z8",
"z9",
"z4",
"z5",
"z6",
"saruman_1",
"Yagthak_1",
"freca1",
"guardian_moria_1",
"mazog_1",
"agandaur_1",
"harad_attackers_8",
"arkish_1",
"orash_1",
"yiltig_1",
"toghrul_1",
"carfe_1",
"bartan_1",
"khand_attackers_3",
"khand_attackers_G",
"bn_army_1",
"bn_army_2",
"bn_army_3",
"ents_1",
"amon_hen_custom1",
"ciryatan_1",
"ecthellion_1",
}
  
label_units_list = {
    ["denethor_1"] = "Fountain Guard",
    ["boromir_1"] = "Osgiliath Veterans",
    ["angbor_1"] = "Lamedon Clansmen",
    ["faramir_1"] = "Ithilien Rangers",
    ["duinhir_1"] = "Blackroot Vale Archers",
    ["forlong_1"] = "Lossarnach Axemen",
    ["hirluin_1"] = "Pinnath Gelin Cavalry",
    ["hurin_1"] = "Raven Helms of Cair Andros",
    ["iorthon_1"] = "Knights of the Silver Swan",
    ["orodreth_1"] = "Lebennin Marines",
    ["adrahil_1"] = "Tirith Aear Wardens",
    ["imrahil_1"] = "Knights of the Silver Swan",
    ["cirdan_1"] = "Falas Lords",
    ["theoden_1"] = "King's Horseguard",
    ["eomer_1"] = "The Red Shields of Erkenbrand",
    ["barliman_1"] = "Gate Keepers",
    ["breeheir_1"] = "Council Guard",
    ["alf_1"] = "Bandobras Archers",
    ["bilbo_1"] = "Gate Keepers",
    ["paladin_1"] = "Bandobras Archers",
    ["wil_1"] = "Bandobras Archers",
    ["aragorn_1"] = "Grey Company",
    ["halbarad_1"] = "Dunedain Steelbowmen",
    ["radagast"] = "Ents",
    ["balin_1"] = "Balins Guard",
    ["elrond_1"] = "GilGalads Company",
    ["gildor_1"] = "Noldorin Bodyguards",
    ["celeborn_1"] = "Berio I Ngelaidh",
    ["haldir_1"] = "Galadhrim Archers",
    ["thranduil_1"] = "Aredhirith",
    ["legolas_1"] = "Hin e-Daur",
    ["sauron_1"] = "Sauron",
    ["gothmog_1"] = "Morgul Chosen",
    ["z1"] = "Temple Knights",
    ["z2"] = "Temple Wards",
    ["z3"] = "Temple Wards",
    ["z7"] = "Temple Wards",
    ["z8"] = "Temple Marksmen",
    ["z9"] = "Temple Marksmen",
    ["z4"] = "Khamuls Shadowknights",
    ["z5"] = "Castellans of Dol Guldur",
    ["z6"] = "Castellans of Dol Guldur",
    ["saruman_1"] = "Guard of the Hand",
    ["Yagthak_1"] = "Orthanc Guard",
    ["freca1"] = "Frekkalingir Harriers",
    ["mazog_1"] = "Pale Uruks",
    ["agandaur_1"] = "Temple Wards",
    ["bn_army_1"] = "Royal Legion of Armenelos",
    ["bn_army_2"] = "Naru n'Aru Sentinels",
    ["bn_army_3"] = "Darkblades",
    ["ents_1"] = "Ents",
    ["amon_hen_custom1"] = "Black Uruks",
}

general_traits_list = {
    "Denethor",
    "Bomomir",
}

trait_units_list = {
  ["Denethor"] = "Fountain Guard",
  ["Bomomir"] = "Dunedain Steelbowmen",
}

function swapBGButton()
    ImGui.SetNextWindowPos(1770*eurbackgroundWindowSizeRight, 210*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.0)
    ImGui.SetNextWindowSize(70, 70)
    ImGui.Begin("swapBG_1", true, bit.bor(ImGuiWindowFlags.NoDecoration,ImGuiWindowFlags.NoBackground))
    eurStyle("basic_1", true)
    if icon_unit then
        if ImGui.ImageButton("swapBGButton_button_1",icon_unit.img,50,50) then
            if swap_bg_window == false then
                swap_bg_window = true
                local settlementInfoScroll = M2TWEOP.getSettlementInfoScroll();
                if settlementInfoScroll ~= nil then
                    if settlementInfoScroll.settlement ~= nil then
                        if settlementInfoScroll.settlement.governor ~= nil then
                            temp_char_stuff = settlementInfoScroll.settlement.governor
                        end
                    end
                end
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            else
                swap_bg_window = false
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            end
        end
    else
        if (ImGui.Button("Swap", 40, 20)) then
            if swap_bg_window == false then
                swap_bg_window = true
                local settlementInfoScroll = M2TWEOP.getSettlementInfoScroll();
                if settlementInfoScroll ~= nil then
                    if settlementInfoScroll.settlement ~= nil then
                        if settlementInfoScroll.settlement.governor ~= nil then
                            temp_char_stuff = settlementInfoScroll.settlement.governor
                        end
                    end
                end
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            else
                swap_bg_window = false
                if EOP_WAVS["uicah_menuclick1"] ~= nil then
                    M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
                end
            end
        end
    end
        eurStyle("basic_1", false)
    ImGui.End()
end

function swapBGWindow()
    local rank = 0
    ImGui.SetNextWindowPos(10*eurbackgroundWindowSizeRight, 10*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(1)
    ImGui.SetNextWindowSize(700*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
    ImGui.Begin("swap_bg_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.BeginChild("swap_bg_child_1", 700*eurbackgroundWindowSizeRight, 420*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoInputs)
    ImGui.NewLine()
    local UI_MANAGER = gameDataAll.get().uiCardManager
    local selectedUnit=UI_MANAGER:getSelectedUnitCard(0)
    if selectedUnit == nil then
        local char=UI_MANAGER.selectedCharacter
        local sett=UI_MANAGER.selectedSettlement
        if char ~= nil then
            if char:getTypeID() == 7 then
                selectedUnit = char.bodyguards
            end
        end
        if sett ~= nil then
            if sett.governor ~= nil then
                if sett.governor:getTypeID() == 7 then
                    selectedUnit = sett.governor.bodyguards
                end
            end
        end
    end
    if selectedUnit ~= nil then
        if selectedUnit.character ~= nil then
            temp_char_stuff = selectedUnit.character
            if temp_char_stuff:getTypeID() == 7 then
                ImGui.Text(temp_char_stuff.characterRecord.localizedDisplayName)
                ImGui.Text("Current Bodyguard: "..temp_char_stuff.bodyguards.eduEntry.eduType)
                ImGui.Separator()
                rank = genRankCheck(nil, temp_char_stuff.characterRecord)
                local name = temp_char_stuff.characterRecord.shortName..tostring(temp_char_stuff.characterRecord.label)
                genUnitCheck(temp_char_stuff.characterRecord, rank)
                temp_gen_units_target, temp_gen_units_target_clicked = ImGui.Combo("", temp_gen_units_target, temp_gen_units, #temp_gen_units, #temp_gen_units+1)
                ImGui.Text("Cooldown: 20 turns")
                local cost = 0
                local edu = M2TWEOPDU.getEduEntryByType(temp_gen_units[temp_gen_units_target+1])
                if edu ~= nil then
                    cost = M2TWEOPDU.getEduEntryByType(temp_gen_units[temp_gen_units_target+1]).recruitCost
                end
                ImGui.Text("Personal Guard: "..tostring(temp_char_stuff.characterRecord.personalSecurity))
                if temp_char_stuff.characterRecord.personalSecurity < 10 then
                    ImGui.Text("Add Personal Guard(500 each): ")
                    ImGui.SameLine()
                    guard_add, temp_used = ImGui.SliderInt("", guard_add, 0, (10-temp_char_stuff.characterRecord.personalSecurity))
                    if guard_add > 0 then
                        cost = cost+(guard_add*500)
                    end
                end
                ImGui.Text("Cost: "..tostring(cost))
                local army = temp_char_stuff.army
                if temp_char_stuff.army == nil then
                    if temp_char_stuff.settlement ~= nil then
                        army = temp_char_stuff.settlement.army
                    elseif temp_char_stuff.fort ~= nil then
                        army = temp_char_stuff.fort.army
                    elseif temp_char_stuff.armyNotLeaded ~= nil then
                        army = temp_char_stuff.armyNotLeaded
                    end
                end
                if army ~= nil then
                    if persistent_gen_list[name] ~= nil then
                        if persistent_gen_list[name].cooldown == 0 then
                            if (ImGui.Button("Change", 100, 80)) then
                                if army.numOfUnits < 20 then
                                    if temp_char_stuff.faction.money >= cost then
                                        persistent_gen_list[name].cooldown = 20
                                        temp_char_stuff.characterRecord.personalSecurity = (temp_char_stuff.characterRecord.personalSecurity+guard_add)
                                        stratmap.game.callConsole("add_money", "-" .. tostring(cost))
                                        setBodyguard(temp_char_stuff, (temp_gen_units[temp_gen_units_target+1]), temp_char_stuff.bodyguards.exp, temp_char_stuff.bodyguards.weaponLVL, 1, "")
                                        swap_bg_window = false
                                    end
                                end
                            end
                            if army.numOfUnits > 19 then
                                ImGui.TextColored(1,0,0,1,"Cannot swap with full army.")
                            end
                        else
                            ImGui.TextColored(1,0,0,1,"Cannot change for: "..tostring(persistent_gen_list[temp_char_stuff.characterRecord.shortName..tostring(temp_char_stuff.characterRecord.label)].cooldown).." turns.")
                        end
                    else
                        ImGui.TextColored(1,0,0,1,"New general, cannot change yet.")
                    end
                end
            end
        else
            ImGui.TextColored(0,1,0,1,"Please select a general unit card.")
        end
    else
        ImGui.TextColored(0,1,0,1,"Please select a general unit card.")
    end
    ImGui.EndChild()
    if (centeredImageButton("Close", 80, 50, 0)) then
        swap_bg_window = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

function genUnitCheck(char, rank)
    if gen_units_char == char then return end
    print("checking char")
    temp_gen_units = {}
    for i = 0, #gen_units_list["T1"] do
        local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list["T1"][i])
        if eduEntry:hasOwnership(eur_playerFactionId) then
            table.insert(temp_gen_units, gen_units_list["T1"][i])
        end
    end
    if rank > 110 then
        for i = 0, #gen_units_list["T2"] do
            local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list["T2"][i])
            if eduEntry:hasOwnership(eur_playerFactionId) then
                table.insert(temp_gen_units, gen_units_list["T2"][i])
            end
        end
    end
    if rank > 170 then
        for i = 0, #gen_units_list["T3"] do
            local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list["T3"][i])
            if eduEntry:hasOwnership(eur_playerFactionId) then
                table.insert(temp_gen_units, gen_units_list["T3"][i])
            end
        end
    end
    if tableContains(general_label_list, char.label) then
        if label_units_list[char.label] ~= nil then
            local eduEntry = M2TWEOPDU.getEduEntryByType(label_units_list[char.label])
            if eduEntry:hasOwnership(eur_playerFactionId) then
                table.insert(temp_gen_units, label_units_list[char.label])
            end
        end
    end
    for i = 1, #general_traits_list do
        if hasTrait(char, general_traits_list[i]) then
           local eduEntry = M2TWEOPDU.getEduEntryByType(trait_units_list[general_traits_list[i]])
            if eduEntry:hasOwnership(eur_playerFactionId) then
               table.insert(temp_gen_units, trait_units_list[general_traits_list[i]])
            end
        end
    end
    gen_units_char = char
end

function genRankCheck(faction, char)
    temp_com_inf = 0
    if faction ~= nil then
        if faction.isPlayerControlled == 0 then return end
        for i = 0, faction.numOfCharacters - 1 do
            local char = faction:getCharacter(i)
            if char:getTypeID() == 7 then
                if char.bodyguards ~= nil then
                    local char = char.characterRecord
                    if char.label == "" then
                        char.label = char.shortName..tostring(eur_turn_number)
                    end
                    local name = char.shortName..tostring(char.label)
                    if not persistent_gen_list[name] then
                        persistent_gen_list[name] = {}
                        persistent_gen_list[name].turns = 0
                        persistent_gen_list[name].cooldown = 0
                        persistent_gen_list[name].command = {}
                        persistent_gen_list[name].loyalty = {}
                        persistent_gen_list[name].authority = {}
                        persistent_gen_list[name].command[persistent_gen_list[name].turns] = char.command
                        persistent_gen_list[name].loyalty[persistent_gen_list[name].turns] = char.loyalty
                        persistent_gen_list[name].authority[persistent_gen_list[name].turns] = char.authority
                    else
                        if persistent_gen_list[name].turns > 9 then
                            persistent_gen_list[name].turns = 0
                        end
                        if persistent_gen_list[name].cooldown > 0 then
                            persistent_gen_list[name].cooldown = persistent_gen_list[name].cooldown-1
                        end
                        persistent_gen_list[name].turns = persistent_gen_list[name].turns+1
                        persistent_gen_list[name].command[persistent_gen_list[name].turns] = char.command
                        persistent_gen_list[name].loyalty[persistent_gen_list[name].turns] = char.loyalty
                        persistent_gen_list[name].authority[persistent_gen_list[name].turns] = char.authority
                    end
                end
            end
        end
    end
    if char ~= nil then
        if gen_rank_char == char then return end
        local name = char.shortName..tostring(char.label)
        if persistent_gen_list[name] ~= nil then
            for i = 0, 10 do
                if persistent_gen_list[name].command[i] ~= nil then
                    temp_com_inf = temp_com_inf+(persistent_gen_list[name].command[i]+persistent_gen_list[name].loyalty[i]+persistent_gen_list[name].authority[i])
                end
            end
            return temp_com_inf
        else
            return 0
        end
        gen_rank_char = char
    end
end

function setBGSize(faction, character, unit)
    if faction ~= nil then
        for i = 0, faction.numOfCharacters - 1 do
            temp_char = faction:getCharacter(i)
            if temp_char:getTypeID() == 7 then
                if temp_char.bodyguards ~= nil then
                    if faction.isPlayerControlled == 1 then
                        if persistent_gen_list_reset[temp_char.characterRecord.shortName..tostring(temp_char.characterRecord.label)] == nil then
                            if default_general_units[faction.name] ~= nil then
                                if default_general_units[faction.name].old == temp_char.bodyguards.eduEntry.eduType then
                                    local army = temp_char.army
                                    if temp_char.army == nil then
                                        if temp_char.settlement ~= nil then
                                            army = temp_char.settlement.army
                                        elseif temp_char.fort ~= nil then
                                            army = temp_char.fort.army
                                        elseif temp_char.armyNotLeaded ~= nil then
                                            army = temp_char.armyNotLeaded
                                        end
                                    end
                                    if army.numOfUnits < 20 then
                                        setBodyguard(temp_char, (default_general_units[faction.name].new), temp_char.bodyguards.exp, temp_char.bodyguards.weaponLVL, 0, "")
                                        persistent_gen_list_reset[temp_char.characterRecord.shortName..tostring(temp_char.characterRecord.label)] = true
                                    end
                                end
                            end
                        end
                    end
                    local un_max = temp_char.bodyguards.soldierCountStratMapMax
                    local un_min = (un_max / 4)
                    local multi = (un_max - un_min) / 10
                    local command_add = 0
                    if temp_char.characterRecord.command > 0 then
                        command_add = (multi*temp_char.characterRecord.command)
                    end
                    local additional = 0
                    if (temp_char.characterRecord.personalSecurity+temp_char.characterRecord.bodyguardSize) > 0 then
                        additional = ((temp_char.characterRecord.personalSecurity+temp_char.characterRecord.bodyguardSize) * 2.5)
                    end
                    local new_max = math.floor(un_min + command_add + additional)
                    if temp_char.bodyguards.soldierCountStratMap > new_max then
                        temp_char.bodyguards.soldierCountStratMap = new_max
                    end
                end
            end
        end
    end
    if character ~= nil then
        if character:getTypeID() == 7 then
            if character.bodyguards ~= nil then
                if character.faction.isPlayerControlled == 1 then
                    if persistent_gen_list_reset[character.characterRecord.shortName..tostring(character.characterRecord.label)] == nil then
                        if default_general_units[character.faction.name] ~= nil then
                            if default_general_units[character.faction.name].old == character.bodyguards.eduEntry.eduType then
                                local army = character.army
                                if character.army == nil then
                                    if character.settlement ~= nil then
                                        army = character.settlement.army
                                    elseif character.fort ~= nil then
                                        army = character.fort.army
                                    elseif character.armyNotLeaded ~= nil then
                                        army = character.armyNotLeaded
                                    end
                                end
                                if army.numOfUnits < 20 then
                                    setBodyguard(character, (default_general_units[character.faction.name].new), character.bodyguards.exp, character.bodyguards.weaponLVL, 0, "")
                                    persistent_gen_list_reset[character.characterRecord.shortName..tostring(character.characterRecord.label)] = true
                                end
                            end
                        end
                    end
                end
                local un_max = character.bodyguards.soldierCountStratMapMax
                local un_min = (un_max / 4)
                local multi = (un_max - un_min) / 10
                local command_add = 0
                if character.characterRecord.command > 0 then
                    command_add = (multi*character.characterRecord.command)
                end
                local additional = 0
                if (character.characterRecord.personalSecurity+character.characterRecord.bodyguardSize) > 0 then
                    additional = ((character.characterRecord.personalSecurity+character.characterRecord.bodyguardSize) * 2.5)
                end
                local new_max = math.floor(un_min + command_add + additional)
                if character.bodyguards.soldierCountStratMap > new_max then
                    character.bodyguards.soldierCountStratMap = new_max
                end
            end
        end
    end
    if unit ~= nil then
        if unit.character == nil then return end
        temp_char = unit.character
        if temp_char:getTypeID() == 7 then
            if temp_char.bodyguards ~= nil then
                if temp_char.faction.isPlayerControlled == 1 then
                    if persistent_gen_list_reset[temp_char.characterRecord.shortName..tostring(temp_char.characterRecord.label)] == nil then
                        if default_general_units[temp_char.faction.name] ~= nil then
                            if default_general_units[temp_char.faction.name].old == temp_char.bodyguards.eduEntry.eduType then
                                local army = temp_char.army
                                if temp_char.army == nil then
                                    if temp_char.settlement ~= nil then
                                        army = temp_char.settlement.army
                                    elseif temp_char.fort ~= nil then
                                        army = temp_char.fort.army
                                    elseif temp_char.armyNotLeaded ~= nil then
                                        army = temp_char.armyNotLeaded
                                    end
                                end
                                if army.numOfUnits < 20 then
                                    setBodyguard(temp_char, (default_general_units[temp_char.faction.name].new), temp_char.bodyguards.exp, temp_char.bodyguards.weaponLVL, 0, "")
                                    persistent_gen_list_reset[temp_char.characterRecord.shortName..tostring(temp_char.characterRecord.label)] = true
                                end
                            end
                        end
                    end
                end
                local un_max = temp_char.bodyguards.soldierCountStratMapMax
                local un_min = (un_max / 4)
                local multi = (un_max - un_min) / 10
                local additional = ((temp_char.characterRecord.personalSecurity+temp_char.characterRecord.bodyguardSize) * 2.5)
                local new_max = math.floor(un_min + (multi*temp_char.characterRecord.command) + additional)
                if temp_char.bodyguards.soldierCountStratMap > new_max then
                    temp_char.bodyguards.soldierCountStratMap = new_max
                end
            end
        end
    end
end


function setBodyguard(character, newBodyguardType, expLvl, armourLvl, weaponLvl, bgAlias)
    print('Setting random new bodyguard for')
    print(character.characterRecord.localizedDisplayName)
    print(newBodyguardType)
    local expLvl = expLvl or 0;
    local armourLvl = armourLvl or 0;
    local weaponLvl = weaponLvl or 0;
    local originalBodyguard = character.bodyguards;
    --  does the stack have space for a new unit?
    if originalBodyguard.army.numOfUnits < 20 then
        newBodyguard = originalBodyguard.army:createUnit(newBodyguardType, expLvl, armourLvl, weaponLvl);
        newBodyguard.alias = bgAlias
        character:setBodyguardUnit(newBodyguard);
        setBGSize(nil, character, nil)
        originalBodyguard.soldierCountStratMap = 1
        originalBodyguard:kill();
    else
        local tempBodyguard = nil;
        for i = 0, originalBodyguard.army.numOfUnits, 1 do
            unit = originalBodyguard.army:getUnit(i);
            newBodyguard.alias = bgAlias
            if unit.character == nil then
                tempBodyguard = unit;
                break
            end
        end
        -- if this is nil, your stack is full of generals (for some reason)
        if tempBodyguard then
            character:setBodyguardUnit(tempBodyguard);
            originalBodyguard.soldierCountStratMap = 1
            originalBodyguard:kill();
            newBodyguard = tempBodyguard.army:createUnit(newBodyguardType, expLvl, armourLvl, weaponLvl);
            newBodyguard.alias = bgAlias
            character:setBodyguardUnit(newBodyguard);
            setBGSize(nil, character, nil)
        end
    end
    temp_char_stuff = nil
    temp_char_stuff2 = nil
end
