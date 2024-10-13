EOP_WAVS = {}

wavs = {
    --[["ebelfor_anvila",
    "ebelfor_blessea",
    "ebelfor_crystaa",
    "ebelfor_eaglesa",
    "ebelfor_mystica",
    "ebelfor_vinesa",
    "ebfurna_brick1a",
    "ebfurna_brick1b",
    "ebfurna_brick1c",
    "ebfurna_lavaa",
    "ebfurna_lavab",
    "ebfurna_lavac",
    "ebgofor_batcloa",
    "ebgofor_fireara",
    "ebgofor_razorsa",
    "ebgofor_webcoca",
    "ebgorgo_firbuia",
    "ebharad_selecta",
    "ebisarm_selecta",
    "ebiscit_selecta",
    "ebisfor_ironpla",
    "ebisfor_selecta",
    "ebisfor_wizarda",
    "ebiskee_selecta",
    "ebissie_selecta",
    "ebisuru_selecta",
    "ebiswar_selecta",
    "ebiswas_selecta",
    "ebmobar_selecta",
    "ebmocit_selecta",
    "ebmofor_doompya",
    "ebmofor_flamina",
    "ebmofor_gorgona",
    "ebmofor_lavamoa",
    "ebmofor_lavarea",
    "ebmofor_magmaa",
    "ebmofor_morgula",
    "ebmofor_selecta",
    "ebmofur_selecta",
    "ebmolum_selecta",
    "ebmotav_selecta",
    "ebmumak_selecta",
    "ebsiege_horna",
    "ebsiege_selecta",
    "ebslaug_selecta",
    "ebwicav_selecta",
    "ebwidef_selecta",
    "ebwifis_selecta",
    "ebwifor_selecta",
    "ebwispi_selecta",
    "ebwitow_selecta",
    "ebwitre_selecta",
    "escall_horde1a",
    "escave_batsa",
    "esdarkn_on",
    "esdevas_on",
    "eseyesa_createa",
    "eshero_attspya",
    "eshero_berraga",
    "eshero_disguia",
    "eshero_ligblaa",
    "eshero_oilliga",
    "eshero_oilspia",
    "eshero_reinfoa",
    "eshero_steala",
    "eshero_telep1a",
    "eshero_telep2a",
    "eshero_trainaa",
    "esindus_on",
    "espalant_on",
    "esraino_start",
    "essummo_wildmea",
    "estaint_on",
    "eswarch_on",
    "eubalro_summo1c",
    "eubalro_summo2c",
    "eubalro_summo3a",
    "eubalro_vanquia",
    "eubalro_vanquib",
    "eunazgu_morgula",
    "eunazgu_screeca",
    "eusarum_lightna",
    "eusarum_ligrum",
    "eusauro_terfura",
    "euwitch_hourofa",
    "euwitch_screama",
    "gbdwcit_selecta",
    "gbdwfog_selecta",
    "gbdwfor_selecta",
    "gbdwhal_selecta",
    "gbdwhea_selecta",
    "gbdwmin_selecta",
    "gbdwtow_walsela",
    "gbelbar_selecta",
    "gbelere_selecta",
    "gbelfor_selecta",
    "gbelgre_selecta",
    "gbforge_sizzlea",
    "gbgoarc_selecta",
    "gbgoarm_selecta",
    "gbgobat_selecta",
    "gbgocit_selecta",
    "gbgofar_selecta",
    "gbgofor_selecta",
    "gbgopo_selecta",
    "gbgosmi_selecta",
    "gbkeep_selecta",
    "gbmarke_selecta",
    "gbmefor_bannera",
    "gbmefor_oilrela",
    "gbmefor_selecta",
    "gbroarc_selecta",
    "gbroarm_selecta",
    "gbrobat_selecta",
    "gbrocit_selecta",
    "gbroent_selecta",
    "gbrosta_selecta",
    "gbstabl_selecta",
    "gbwell_selecta",
    "gbworks_selecta",
    "gsarrow_calloua",
    "gsarrow_chant_a",
    "gsarrow_flyovea",
    "gsarrow_hits__a",
    "gsarrow_hits__b",
    "gsarrow_horn__a",
    "gsarrow_releasa",
    "gsarrow_swish_a",
    "gsdwarf_rallya",
    "gsdwarf_richesa",
    "gseagle_summo1a",
    "gsflood_hormova",
    "gsganda_whistla",
    "gsganda_whistle",
    "gsheal_on",
    "gshero_chargea",
    "gshero_invulna",
    "gshero_reinfoa",
    "gshero_sumfama",
    "gshero_trainaa",
    "gslone_towera",
    "gsphial_on",
    "gsring_off",
    "gsring_on",
    "gssummo_citadea",
    "gssummo_duned",
    "gssummo_elves",
    "gssummo_ents",
    "gssummo_hobbita",
    "gssummo_hobbitb",
    "gssummo_reichea",
    "gssummo_reicheb",
    "gssummo_rohan",
    "gssummo_royalga",
    "gssummo_royalgu",
    "gssummo_tomboma",
    "gssummo_tombomb",
    "gssummo_tombomc",
    "guarago_athelaa",
    "guarago_bladema",
    "guarago_elend1a",
    "guarwen_flohora",
    "guborom_horn1",
    "guborom_horn2",
    "gucrowd_seleg3a",
    "gudain_migraga",
    "gudain_voxchea",
    "gudain_voxcheb",
    "guganda_heavens",
    "guglorf_windria",
    "guglor_starlia",
    "gurohir_speecha",
    "gusarum_firebaa",
    "guship_salutea",
    "gusoldg_cheerc",
    "gusoldi_cheera",
    "gusoldi_cheerb",
    "gutheod_glori1a",
    "guthran_moveuna",
    "gutombo_voispea",
    "gutombo_voispeb",
    "lubattle_horn",
    "lugondo_movea",
    "luhero_movea",
    "luhero_selecta",
    "luiseng_movea",
    "sahorn_evila",
    "sscloud_enters",
    "suhorn_orcs1a",
    "ucheer",
    "uclick",
    "uclicknofun",
    "uclick_jewel",
    "uclick_zoom",
    "ucommandpoints",
    "ucommandptsa",
    "ucommandptsb",
    "uconquerevil",
    "udavebox",
    "udefeatscreen",
    "udropdowna",
    "uentermission",
    "uicah_addpower1",
    "uicah_menuclick1",
    "uicah_menuclick2",
    "uicah_subtractpower1",
    "uicah_unavailablepower",
    "uiplot_selecta",
    "uiplot_selectb",
    "uirally_point1a",
    "uirally_slaugha",
    "uistanc_attacka",
    "uistanc_battlea",
    "uistanc_holdgra",
    "ulevelu_gondor1",
    "umessage",
    "umouseoverb",
    "umouseoverc",
    "uobjectivecomplete",
    "uplot_select",
    "upowerselect",
    "upowersup",
    "uring_returna",
    "urohan_horn01",
    "uscorecategory",
    "uscorepictures",
    "uscoresplash",
    "uscorevictory",
    "uswitchbowa",
    "uswitchsworda",
    "utreasurea",
    "utreasureb",
    "utreasurec",
    "uvictoryscreen",
    "uvictor_chegood",
    "uwotr_turn1",
    "uzoom_in",
    "wacrowd_hobbita",
    "wibarra_meteora",
    "wibarra_meteorb",
    "wibarra_meteorc",
    "wibarra_meteord",
    "wibarra_meteore",
    "wibarra_meteorf",
    "wiearth_quake1a",
    "wiearth_quake1b",
    "wiearth_quake1c",
    "wiearth_quake1d",
    "wiearth_quake1e",
    "click-21156",
    ]]
}

char_portraits = {}

function turnImageCheck(faction)
    if faction.isPlayerControlled == 0 then return end
    for i = 0, faction.numOfCharacters - 1 do
        local char = faction:getCharacter(i)
        if char:getTypeID() == 7 then
            if char.characterRecord.portrait_custom ~= "" then
                local portrait = char.characterRecord.portrait_custom
                if not char_portraits[portrait] then
                    char_portraits[portrait] = { x = 0, y = 0, img = nil }
                    char_portraits[portrait].x, char_portraits[portrait].y, char_portraits[portrait].img = M2TWEOP.loadTexture(M2TWEOP.getModPath().."\\data\\ui\\custom_portraits\\"..portrait.."\\portrait_young.tga")
                end
            else
                if char.characterRecord.portrait ~= "" then
                    local portrait = char.characterRecord.portrait
                    portrait = string.gsub(portrait, "mods/Divide_and_Conquer_EUR_EOP4/data/ui/"..eur_localculture.."/portraits/portraits/young/generals/", "")
                    print(portrait)
                    if not char_portraits[portrait] then
                        char_portraits[portrait] = { x = 0, y = 0, img = nil }
                        char_portraits[portrait].x, char_portraits[portrait].y, char_portraits[portrait].img = M2TWEOP.loadTexture(M2TWEOP.getModPath().."\\data\\ui\\"..eur_localculture.."\\portraits\\portraits\\young\\generals\\"..portrait)
                    end
                end
            end
        end
    end
end

function loadImages()
    local path = '"'..M2TWEOP.getModPath().."\\data\\ui\\units\\"..eur_player_faction.name.."\\"..'"'
    for i = 0, 1500 do
        local eduEntry = M2TWEOPDU.getEduEntry(i)
        if eduEntry ~= nil then
            if eduEntry:hasOwnership(eur_playerFactionId) then
                --dir1 = string.lower(eduEntry.unitCardTga)
                dir1 = eduEntry.unitCardTga
                --table.insert(unit_names, dir1)
                if eur_tga_table[dir1] == nil then
                    eur_tga_table[dir1] = { x = 0, y = 0, img = nil }
                    eur_tga_table[dir1].x, eur_tga_table[dir1].y, eur_tga_table[dir1].img = M2TWEOP.loadTexture(M2TWEOP.getModPath().."\\data\\ui\\units\\"..eur_player_faction.name.."\\"..dir1)
                end
            end
        end
    end
    --printTable(eur_tga_table)
    bg_small_1 = { x = 0, y = 0, img = nil }
    bg_1 = { x = 0, y = 0, img = nil }
    bg_2 = { x = 0, y = 0, img = nil }
    bg_3_elven = { x = 0, y = 0, img = nil }
    scroll_bg = { x = 0, y = 0, img = nil }
    button_01 = { x = 0, y = 0, img = nil }
    button_02 = { x = 0, y = 0, img = nil }
    sortstack1 = { x = 0, y = 0, img = nil }

    sortstack1.x, sortstack1.y, sortstack1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\sortstack1.png')
    bg_small_1.x, bg_small_1.y, bg_small_1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\bg_small_1.png')
    bg_1.x, bg_1.y, bg_1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\bg_1.png')
    bg_2.x, bg_2.y, bg_2.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\bg_2.png')
    bg_3_elven.x, bg_3_elven.y, bg_3_elven.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\bg_3_elven.png')
    scroll_bg.x, scroll_bg.y, scroll_bg.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\scroll_bg.png')
    button_01.x, button_01.y, button_01.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\button_01.png')
    button_02.x, button_02.y, button_02.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\button_02.png')

    test1 = { x = 0, y = 0, img = nil }
    ent1 = { x = 0, y = 0, img = nil }
    eldarlight = { x = 0, y = 0, img = nil }
    mirror1 = { x = 0, y = 0, img = nil }
    mirror2 = { x = 0, y = 0, img = nil }
    mirror3 = { x = 0, y = 0, img = nil }
    yavanna = { x = 0, y = 0, img = nil }
    orome = { x = 0, y = 0, img = nil }
    tulkas = { x = 0, y = 0, img = nil }
    ulmo = { x = 0, y = 0, img = nil }
    button1 = { x = 0, y = 0, img = nil }
    icon_unit = { x = 0, y = 0, img = nil }

    icon_unit.x, icon_unit.y, icon_unit.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\icon_unit.tga')
    test1.x, test1.y, test1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\test1.png')
    ent1.x, ent1.y, ent1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\ent1.png')
    eldarlight.x, eldarlight.y, eldarlight.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\eldarlight.png')
    mirror1.x, mirror1.y, mirror1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\mirror1.png')
    mirror2.x, mirror2.y, mirror2.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\mirror2.png')
    mirror3.x, mirror3.y, mirror3.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\mirror3.png')
    yavanna.x, yavanna.y, yavanna.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\yavanna.png')
    orome.x, orome.y, orome.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\orome.png')
    tulkas.x, tulkas.y, tulkas.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\tulkas.png')
    ulmo.x, ulmo.y, ulmo.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\ulmo.png')
    button1.x, button1.y, button1.img = M2TWEOP.loadTexture(M2TWEOP.getModPath()..'\\eopData\\images\\button1.png')

    EUR_EVENTS["ireland"][0].image = mirror1
    EUR_EVENTS["ireland"][1].image = yavanna
    EUR_EVENTS["ireland"][2].image = ent1
    EUR_EVENTS["ireland"][3].image = eldarlight

    EUR_EVENTS["mongols"][0].image = mirror1
    EUR_EVENTS["mongols"][1].image = yavanna
    EUR_EVENTS["mongols"][2].image = orome
    EUR_EVENTS["mongols"][3].image = eldarlight

    EUR_EVENTS["saxons"][0].image = test1
    EUR_EVENTS["saxons"][1].image = tulkas
    EUR_EVENTS["saxons"][2].image = yavanna
    EUR_EVENTS["saxons"][3].image = eldarlight

    EUR_EVENTS["denmark"][0].image = ulmo
    EUR_EVENTS["denmark"][1].image = yavanna
    EUR_EVENTS["denmark"][2].image = test1
    EUR_EVENTS["denmark"][3].image = eldarlight

end

function unloadImages()
    local campaign = gameDataAll.get().campaignStruct
    local playerFactionId = M2TWEOP.getLocalFactionID()
    local faction = campaign.factionsSortedByID[playerFactionId + 1]
    if faction == nil then return end
    local culturename = M2TWEOP.getCultureName(faction.cultureID);
    modPath=M2TWEOP.getModPath();
    path = '"'..modPath.."\\data\\ui\\"..culturename.."\\buildings\\construction\\"..'"'
    for dir1 in io.popen("dir "  ..path .." /b"):lines() do 
        if dir1 == nil then return end
        dir1 = string.gsub(dir1, "#", "")
        dir1 = string.gsub(dir1, ".tga", "")
        dir1 = string.lower(dir1)
        if eur_tga_table[dir1] ~= nil then
            M2TWEOP.unloadTexture(eur_tga_table[dir1].img);
        end
    end
end

function loadSounds()
    for i = 1, #wavs do
        if not EOP_WAVS[wavs[i]] then
            EOP_WAVS[wavs[i]] = M2TWEOPSounds.createEOPSound(M2TWEOP.getModPath().."/eopData/sounds/test/"..wavs[i]..".wav")
        end
    end
end

function loadCAS()
    M2TWEOP.addModelToGame("data/models_strat/residences/empty_model.cas", 101)
end

function loadFonts()
    font_0 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/RINGM___.TTF", 18, nil, nil)
    font_1 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/Merriweather-Regular.ttf", 18, nil, nil)
    --font_2 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/morris-roman.black.ttf", 18, nil, nil)
    --font_3 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/markdownH1Font.ttf", 18, nil, nil)
    --font_4 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/MedievalSharp-xOZ5.ttf", 18, nil, nil)
    --font_5 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/Middleearth-ao6m.ttf", 18, nil, nil)
    --font_6 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/anirb___.ttf", 18, nil, nil)
    --font_7 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/anirm___.ttf", 18, nil, nil)
    --font_8 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/Magicmedieval-pRV1.ttf", 18, nil, nil)
    --font_9 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/markdownH2Font.ttf", 18, nil, nil)
    --font_10 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/WitcherKnight-vmLdA.ttf", 18, nil, nil)
    --font_11 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/ModernAntiqua-Zw5K.ttf.ttf", 18, nil, nil)
    --font_12 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/DevinneSwash-qZd5.ttf", 18, nil, nil)
    --font_13 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/Anironc-d9DK.ttf", 18, nil, nil)
    --font_14 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/Fleshandblood-MVA5x.ttf", 18, nil, nil)
    --font_15 = ImGui.GetIO().Fonts:AddFontFromFileTTF(M2TWEOP.getModPath().."/fonts/mainFont.ttf", 18, nil, nil)
    
    font_RINGM = font_list[font_choice+1]
    font_list = {nil, font_0, font_1,}
    font_list_names = {"None","Ringbearer","Merriweather", }
end
