temp_gen_units_target = 0
temp_gen_units_target_clicked = false
temp_gen_units = {}

temp_gen_units = {}

guard_add = 0
temp_used = false

gen_rank_char = nil
gen_units_char = nil

mod_general_units_list = {
    {name="Rohan Bodyguard",size=21},
    {name="Pharazim Nobles",size=21},
    {name="Dunedain Bodyguard",size=40},
    {name="Gondor Bodyguard",size=45},
    {name="Royal Guardsmen",size=40},
    {name="High Paladins",size=45},
    {name="Skin-Changers",size=45},
    {name="Angmar Bodyguards",size=45},
    {name="Brenin's Guard",size=45},
    {name="Black Snake Guard",size=21},
    {name="Variag Nobles",size=21},
    {name="Loke Rim Bodyguard",size=50},
    {name="Zenith Guard",size=45},
    {name="Tumunzahar Nobles",size=40},
    {name="Durins Guard",size=45},
    {name="Tawar Areiniyr",size=35},
    {name="Elbereths Sentinels",size=35},
    {name="Calaquendi Lords",size=28},
    {name="Uruk Bodyguard",size=58},
    {name="Mirkwood Bodyguard",size=45},
    {name="Goblin Bodyguards",size=58},
    {name="Mountain Guard",size=45},
    {name="Uruk-hai Bodyguards",size=45},
    {name="Noldorin Bodyguards",size=49},
}

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
    ["milan"] = {
        ["T1"] = {
            [0] = "Eorling Spearmen",
            [1] = "Eorling Archers",
            [2] = "Rohirrim",
            [3] = "Rohirrim Archers",
        },
        ["T2"] = {
            [0] = "Riddermark Cavalry",
            [1] = "Eored Lancers",
            [2] = "Eored Skirmishers",
        },
        ["T3"] = {
            [0] = "Rohan Bodyguard",
            [1] = "Guard of the Golden Hall",
            [2] = "Shieldmaidens of Rohan",
        },
    },
    ["sicily"] = {
        ["T1"] = {
            [0] = "Gondor Militia",
            [1] = "Gondor Archer Militia",
            [2] = "Gondor Cavalry Militia",
            [3] = "Territorial Guardsmen",
        },
        ["T2"] = {
            [0] = "Gondor Spearmen",
            [1] = "Gondor Infantry",
            [2] = "Gondor Pikemen",
            [3] = "Gondor Archers",
            [4] = "Gondor Cavalry",
        },
        ["T3"] = {
            [0] = "Citadel Guard",
            [1] = "Marksmen of Cair Andros",
            [2] = "Gondor Bodyguard",
        },
    },
    ["turks"] = {
        ["T1"] = {
            [0] = "Dunedain Wardens",
            [1] = "Dunedain Rangers",
        },
        ["T2"] = {
            [0] = "Dunedain Armsmen",
            [1] = "Dunedain Scouts",
            [2] = "Sworn Horsemen",
        },
        ["T3"] = {
            [0] = "Dunedain Steelbowmen",
            [1] = "Dismounted Fornost-Erain Knights",
            [2] = "Dunedain Bodyguard",
        },
    },
    ["russia"] = {
        ["T1"] = {
            [0] = "Belegaer Footmen",
            [1] = "Belegaer Pikemen",
            [2] = "Belegaer Archers",
        },
        ["T2"] = {
            [0] = "Numenorean Shieldguard",
            [1] = "Numenorean Marksmen",
        },
        ["T3"] = {
            [0] = "Naru n'Aru Royal Guard",
            [1] = "Naru n'Aru Sentinels",
            [2] = "Pharazim Nobles",
        },
    },
    ["scotland"] = {
        ["T1"] = {
            [0] = "Dalian Swordsmen",
            [1] = "Dale Cavalry",
        },
        ["T2"] = {
            [0] = "Dale Swordmasters",
            [1] = "Barding Marksmen",
        },
        ["T3"] = {
            [0] = "Earls",
            [1] = "Barons",
            [2] = "Royal Guardsmen",
        },
    },
    ["byzantium"] = {
        ["T1"] = {
            [0] = "Thorn Bladesmen",
            [1] = "Thorn Crossbowmen",
            [2] = "Thorn Riders",
        },
        ["T2"] = {
            [0] = "Regent Axeguard",
            [1] = "Regent Spearguard",
            [2] = "Regent Bowguard",
        },
        ["T3"] = {
            [0] = "High Paladins",
            [1] = "Vintner-Court Paladins",
        },
    },
    ["timurids"] = {
        ["T1"] = {
            [0] = "Vale Archers",
            [1] = "Woodman Warriors",
            [2] = "Woodman Defenders",
            [3] = "Woodman Hunters",
        },
        ["T2"] = {
            [0] = "Beorning Defenders",
            [1] = "Beorning Spearmen",
            [2] = "Greenwood Foresters",
        },
        ["T3"] = {
            [0] = "Skin-Changers",
        },
    },
    ["portugal"] = {
        ["T1"] = {
            [0] = "Angmarim Infantry",
            [1] = "Angmarim Archers",
        },
        ["T2"] = {
            [0] = "Iron Crown Warriors",
            [1] = "Iron Crown Halberdiers",
            [2] = "Iron Crown Longbowmen",
        },
        ["T3"] = {
            [0] = "Northguard",
            [1] = "Darkblades",
            [2] = "Guardians of Carn Dum",
            [3] = "Angmar Bodyguards",
        },
    },
    ["aztecs"] = {
        ["T1"] = {
            [0] = "Clan Spearmen",
            [1] = "Clan Hunters",
        },
        ["T2"] = {
            [0] = "Warband Host",
            [1] = "Warband Blades",
        },
        ["T3"] = {
            [0] = "Wulfguard Axemen",
            [1] = "Wulfguard Pikes",
            [2] = "Brenin's Guard",
        },
    },
    ["teutonic_order"] = {
        ["T1"] = {
            [0] = "Mordag Fishermen",
            [1] = "Faolan Borderguard",
        },
        ["T2"] = {
            [0] = "Enedwaith Guardsmen",
            [1] = "Enedwaith Marksmen",
        },
        ["T3"] = {
            [0] = "Clan Heralds",
        },
    },
    ["spain"] = {
        ["T1"] = {
            [0] = "Southron Warband",
            [1] = "Southron Pikemen",
            [2] = "Southron Archers",
            [3] = "Southron Lancers",
        },
        ["T2"] = {
            [0] = "Hasharii Blades",
            [1] = "Hasharii Shadows",
        },
        ["T3"] = {
            [0] = "Serpent Guard",
            [1] = "Serpent Archers",
            [2] = "Black Snake Guard",
        },
    },
    ["khand"] = {
        ["T1"] = {
            [0] = "Nomad Warriors",
            [1] = "Nomad Horsemen",
        },
        ["T2"] = {
            [0] = "Variag Swordsmen",
            [1] = "Variag Bowmen",
            [2] = "Variag Horse Archers",
        },
        ["T3"] = {
            [0] = "Khand Elite Spearmen",
            [1] = "Khand Elite Lancers",
            [2] = "Khand Elite Horse Archers",
            [3] = "Variag Nobles",
        },
    },
    ["venice"] = {
        ["T1"] = {
            [0] = "Rhunnic Warriors",
            [1] = "Rhunnic Bowmen",
        },
        ["T2"] = {
            [0] = "Loke-Rim Spearmen",
            [1] = "Loke-Rim Archers",
        },
        ["T3"] = {
            [0] = "Dragon-Wrath Crossbowmen",
            [1] = "Dragon-Wrath Kataphracts",
            [2] = "Loke Rim Bodyguard",
        },
    },
    ["norway"] = {
        ["T1"] = {
            [0] = "Khazad Sentries",
        },
        ["T2"] = {
            [0] = "Legion Shieldguard",
            [3] = "Legion Crossbows",
        },
        ["T3"] = {
            [0] = "Legion Deeping Guard",
            [1] = "Blacklock Engineers",
            [2] = "Zenith Guard",
        },
    },
    ["hungary"] = {
        ["T1"] = {
            [0] = "Ered Luin Militia",
            [1] = "Ered Luin Pikemen",
            [2] = "Ered Luin Scouts",
        },
        ["T2"] = {
            [0] = "Longbeard Phalanx",
            [1] = "Longbeard Swordsmen",
            [2] = "Longbeard Crossbows",
        },
        ["T3"] = {
            [0] = "King's Mounted Hammerguard",
            [1] = "Tumunzahar Nobles",
            [2] = "Broadbeam Marksmen",
        },
    },
    ["moors"] = {
        ["T1"] = {
            [0] = "Erebor Infantry",
            [1] = "Erebor Axethrowers",
        },
        ["T2"] = {
            [0] = "Kings Axes",
            [1] = "Kings Warriors",
            [2] = "Kings Shields",
            [3] = "Iron Crossbowmen",
        },
        ["T3"] = {
            [0] = "Durins Guard",
            [1] = "King's Mounted Hammerguard",
            [2] = "Blacklock Engineers",

        },
    },
    ["mongols"] = {
        ["T1"] = {
            [0] = "Woodland Spearmen",
            [1] = "Woodland Warriors",
            [2] = "Woodland Wardens",
            [3] = "Woodland Scouts",
        },
        ["T2"] = {
            [0] = "Elder Council",
            [1] = "Woodland Sentinels",
        },
        ["T3"] = {
            [0] = "Arthirochon",
            [1] = "Tawar Areiniyr",
        },
    },
    ["ireland"] = {
        ["T1"] = {
            [0] = "Lorien Warders",
            [1] = "Lorien Sentries",
            [2] = "Lorien Archers",
            [3] = "Lorien Scouts",
        },
        ["T2"] = {
            [0] = "Sentinels of Cerin Amroth",
            [1] = "Yavannas Chosen",
            [2] = "Lothlorien Marchwardens",
        },
        ["T3"] = {
            [0] = "Hitherbin",
            [1] = "Elbereths Sentinels",
        },
    },
    ["denmark"] = {
        ["T1"] = {
            [0] = "Lindar Guards",
            [1] = "Lindar Mariners",
            [2] = "Lindon Longspears",
            [3] = "Lindar Bowmen",
        },
        ["T2"] = {
            [0] = "Sindar Spearmen",
            [1] = "Sindar Archers",
            [2] = "Amanyar Riders",
            [3] = "Amanyar Rangers",
        },
        ["T3"] = {
            [0] = "Noldorin Defenders",
            [1] = "Noldorin Archers",
            [2] = "Calaquendi Lords",
        },
    },
    ["england"] = {
        ["T1"] = {
            [0] = "Orc Raiders",
            [1] = "Orc Band",
            [2] = "Orc Scouts",
        },
        ["T2"] = {
            [0] = "Black Uruks",
            [1] = "Black Uruk Halberds",
            [2] = "Black Uruk Archers",
        },
        ["T3"] = {
            [0] = "Temple Wards",
            [1] = "Uruk Bodyguard",
        },
    },
    ["poland"] = {
        ["T1"] = {
            [0] = "Dol Guldur Host",
            [1] = "Dol Guldur Scouts",
            [2] = "Dol Guldur Archers",
        },
        ["T2"] = {
            [0] = "Mirkwood Slayers",
            [1] = "Mirkwood Spears",
            [2] = "Mirkwood Archers",
        },
        ["T3"] = {
            [0] = "Khamuls Shadowguard",
            [1] = "Khamuls Shadow Rangers",
            [2] = "Mirkwood Bodyguard",
        },
    },
    ["hre"] = {
        ["T1"] = {
            [0] = "Goblin Infantry",
            [1] = "Goblin Band",
            [2] = "Goblin Archers",
        },
        ["T2"] = {
            [0] = "Black Pit Infantry",
            [1] = "Black Pit Spears",
            [2] = "Black Pit Halberd",
            [3] = "Black Pit Archers",
            [4] = "Black Pit Crossbows",
        },
        ["T3"] = {
            [0] = "Azogs Defilers",
            [1] = "Goblin Bodyguards",
        },
    },
    ["gundabad"] = {
        ["T1"] = {
            [0] = "Snow-Orc Raiders",
            [1] = "Snow-Orc Spearmen",
            [2] = "Snow-Orc Scouts",
        },
        ["T2"] = {
            [0] = "Blackshield Warband",
            [1] = "Blackshield Warriors",
            [2] = "Blackshield Halberds",
            [3] = "Blackshield Archers",
        },
        ["T3"] = {
            [0] = "Mountain Guard",
            [1] = "Half-Trolls",
        },
    },
    ["france"] = {
        ["T1"] = {
            [0] = "Uruk-hai Raiders",
            [1] = "Uruk-hai Archers",
        },
        ["T2"] = {
            [0] = "Uruk-hai Infantry",
            [1] = "Uruk-hai Pikemen",
            [2] = "Uruk-hai Crossbow",
        },
        ["T3"] = {
            [0] = "Uruk-hai Bodyguards",
            [1] = "Uruk-hai Bodyguards",
        },
    },
    ["saxons"] = {
        ["T1"] = {
            [0] = "Mounted Quendi",
            [1] = "Sword Quendi",
            [2] = "Spear Quendi",
            [3] = "Bow Quendi",
        },
        ["T2"] = {
            [0] = "Sindar Spearmen",
            [1] = "Sindar Archers",
            [2] = "Amanyar Riders",
            [3] = "Amanyar Rangers",
        },
        ["T3"] = {
            [0] = "Noldorin Defenders",
            [1] = "Noldorin Archers",
            [2] = "Noldorin Bodyguards",
        },
    },
}

combo_labtrait_list = {
    "Gimilkhad",
    "hurin_rk",
    "Aragorn",
    "Ugluk",
    "Drangu",
    "Elladan",
    "Elrond",
    "Gor_eop_1",
    "Glirhuin_eop_1",
    "celeborn_union",
    "forlong_rk",
    "Forlong",
    "Folcred",
    "Taraghlan_eop_1",
    "radagast",
    "Beorn_eop_1",
    "alatar_1",
    "Elrohir",
    "Utbah_eop_1",
    "Seitheach_eop_1",
    "Eomer_eop_1",
    "orophin_1",
    "Erkenbrand_eop_1",
    "Imrahil",
    "Scyld_eop_1",
    "Uglag_eop_1",
    "Hama",
    "Hunvorn",
    "Adrahil",
    "istion_rk",
    "Tremac",
    "Maernil",
    "Balin",
    "enpremi_union",
    "Gleowine",
    "golasgil_rk",
    "Cirdan",
    "Agandaur",
    "Vidusith_eop_1",
    "Theodred_eop_1",
    "Ghan_eop_1",
    "Rudaz_eop_1",
    "Fionghan_eop_1",
    "Khaldoon_eop_1",
    "Baragund_eop_1",
    "Fastred_eop_1",
    "rumil_union",
    "glorfindel_1",
    "Faramir",
    "Gimli",
    "Theoden",
    "hirluin_rk",
    "rumil_1",
    "Gamling_eop_1",
    "Saruman",
    "Orodreth",
    "Bane",
    "gandalf_2",
    "Gazluk_eop_1",
    "Lunug_eop_1",
    "Ja_Sur_eop_1",
    "Yagthak",
    "pallando_1",
    "Erunestian_eop_1",
    "haldir_union",
    "Grain_eop_1",
    "Ubaadah_eop_1",
    "Thranduil",
    "Hirluin",
    "Morholt",
    "Melmidoc_eop_1",
    "Dain",
    "Gothmog",
    "Halbarad",
    "Hazolg_eop_1",
    "orthordir_union",
    "Umaarah_eop_1",
    "Ulairon",
    "Forthwin",
    "Athalhere_eop_1",
    "Luag",
    "Coruion_eop_1",
    "bn_army_2",
    "enpremi_1",
    "Mazog",
    "gondor_attackers_m",
    "imrahil_rk",
    "Kavatha_eop_1",
    "Celeborn",
    "lurtz_1",
    "Denethor",
    "Jasur_eop_1",
    "Legolas",
    "duinhir_rk",
    "Agorolg_eop_1",
    "balrog_1",
    "oin_1",
    "Margoz",
    "guardian_moria_1",
    "gandalf_1",
    "orophin_union",
    "legolas_union",
    "thranduil_union",
    "Dinenion_eop_1",
    "ancantar_3",
    "orodreth_rk",
    "gandalf_3",
    "Iorthon_eop_1",
    "Knights of the Silver Swan",
    "ancantar_1",
    "adrahil_rk",
    "mistven_rk",
    "denethor_rk",
    "Eomund_eop_1",
    "Freca_eop_1",
    "angbor_rk",
    "boromir_rk",
    "faramir_rk",
    "Angbor",
    "orthordir_1",
    "dornornoston_1",
    "bn_army_3",
    "Menthar_eop_1",
    "Ghurzog_eop_1",
    "Sauron",
    "Donnchaidh_eop_1",
    "Nurwe",
    "Gildor",
    "Haldir",
    "Brand_eop_1",
    "Boromir",
}

labtrait_units_list = {
    ["Denethor"] = "Fountain Guard",
    ["Boromir"] = "Osgiliath Veterans",
    ["Angbor"] = "Lamedon Clansmen",
    ["Faramir"] = "Ithilien Rangers",
    ["Hirluin"] = "Pinnath Gelin Cavalry",
    ["Orodreth"] = "Lebennin Marines",
    ["Adrahil"] = "Tirith Aear Wardens",
    ["Imrahil"] = "Knights of the Silver Swan",
    ["Cirdan"] = "Falas Lords",
    ["Theoden"] = "King's Horseguard",
    ["Theodred_eop_1"] = "King's Horseguard",
    ["Eomund_eop_1"] = "Riders of the Fold",
    ["Eomer_eop_1"] = "The Red Shields of Erkenbrand",
    ["Erkenbrand_eop_1"] = "The Red Shields of Erkenbrand",
    ["Gamling_eop_1"] = "Red Axemen of Westfold",
    ["Hama"] = "Golden Hall Spearmen",
    ["Aragorn"] = "Grey Company",
    ["Halbarad"] = "Dunedain Steelbowmen",
    ["Brand_eop_1"] = "Hearthguard",
    ["Vidusith_eop_1"] = "Lake-town Pikemen",
    ["Beorn_eop_1"] = "Beorning Shapeshifters",
    ["radagast"] = "Ents",
    ["Fastred_eop_1"] = "Silvan Marchwardens",
    ["Folcred"] = "Woodman Wardens",
    ["Gleowine"] = "Eotheod Archers",
    ["Forthwin"] = "Regent Axeguard",
    ["Athalhere_eop_1"] = "Athala Rangers",
    ["Nurwe"] = "Moriquendi Sentinels",
    ["Dain"] = "Legionaries of Erebor",
    ["Gimli"] = "Axeguard of Erebor",
    ["Gor_eop_1"] = "Gabilgathol Guard",
    ["Grain_eop_1"] = "Broadbeam Marksmen",
    ["Balin"] = "Balins Guard",
    ["Maernil"] = "Storm Guard",
    ["Elrond"] = "GilGalads Company",
    ["Elladan"] = "Dunedain Bodyguard",
    ["Elrohir"] = "Dunedain Bodyguard",
    ["Gildor"] = "Noldorin Bodyguards",
    ["Celeborn"] = "Berio I Ngelaidh",
    ["Haldir"] = "Galadhrim Archers",
    ["Thranduil"] = "Aredhirith",
    ["Legolas"] = "Hin e-Daur",
    ["Tremac"] = "Mochaini Ambaxtoi",
    ["Donnchaidh_eop_1"] = "Dubhshith Foresters",
    ["Margoz"] = "Loke-Nar Rim",
    ["Sauron"] = "Sauron",
    ["Gothmog"] = "Morgul Chosen",
    ["Ulairon"] = "Khamuls Shadow Rangers",
    ["Saruman"] = "Guard of the Hand",
    ["Yagthak"] = "Orthanc Guard",
    ["Freca_eop_1"] = "Frekkalingir Harriers",
    ["Menthar_eop_1"] = "Dunhird Slayers",
    ["Uglag_eop_1"] = "Mountain Uruks",
    ["Agorolg_eop_1"] = "Warg Riders",
    ["Lunug_eop_1"] = "Black Pit Berserkers",
    ["Mazog"] = "Pale Uruks",
    ["Ghurzog_eop_1"] = "Orc Avengers",
    ["Hazolg_eop_1"] = "Orc Avengers",
    ["Agandaur"] = "Temple Wards",
    ["Hunvorn"] = "Rebel Barrow Wights",
    ["Scyld_eop_1"] = "Darkblades",
    ["Morholt"] = "Rhudaur Huscarles",
    ["Drangu"] = "Mount Gram Raiders",
    ["Utbah_eop_1"] = "Serpent Bladesmen",
    ["Gimilkhad"] = "Royal Legion of Armenelos",
    ["bn_army_2"] = "Naru n'Aru Sentinels",
    ["bn_army_3"] = "Darkblades",
    ["gondor_attackers_m"] = "Osgiliath Veterans",
    ["lurtz_1"] = "Lurtz's Hunting Pack",
    ["Ugluk"] = "Berserkers",
    ["Luag"] = "Brenin's Guard",
    ["gandalf_3"] = "Arthedain Royal Guard",
    ["Bane"] = "Moria Balrog",
    ["Taraghlan_eop_1"] = "Wulfguard Axemen",
    ["Glirhuin_eop_1"] = "Wulfguard Pikes",
    ["Erunestian_eop_1"] = "Liadan Spearmen",
    ["Melmidoc_eop_1"] = "Faolan Warriors",
    ["Fionghan_eop_1"] = "Mordag Skirmishers",
    ["Ghan_eop_1"] = "Druedain Hunters",
    ["Coruion_eop_1"] = "Fylani War Wagons",
    ["Seitheach_eop_1"] = "Tir Croicoill Cosantoiri",
    ["glorfindel_1"] = "Eldarinwe Bodyguards",
    ["dornornoston_1"] = "Eregion Smiths",
    ["rumil_1"] = "Lothlorien Marchwardens",
    ["orophin_1"] = "Lothlorien Marchwardens",
    ["enpremi_1"] = "Galadhrim Swordsmen",
    ["orthordir_1"] = "Elvenkings Gateguard",
    ["faramir_rk"] = "Ithilien Rangers",
    ["boromir_rk"] = "Osgiliath Veterans",
    ["hurin_rk"] = "Raven Helms of Cair Andros",
    ["angbor_rk"] = "Lamedon Clansmen",
    ["denethor_rk"] = "Gondor Bodyguard",
    ["mistven_rk"] = "Black Swan Renegades",
    ["adrahil_rk"] = "Tirith Aear Wardens",
    ["imrahil_rk"] = "Knights of the Silver Swan",
    ["istion_rk"] = "Knights of the Silver Swan",
    ["Dinenion_eop_1"] = "Gondor Infantry",
    ["duinhir_rk"] = "Blackroot Vale Archers",
    ["forlong_rk"] = "Lossarnach Axemen",
    ["Forlong"] = "Lossarnach Axemen",
    ["golasgil_rk"] = "Gondor Pikemen",
    ["Knights of the Silver Swan"] = "",
    ["Iorthon_eop_1"] = "Knights of the Silver Swan",
    ["Baragund_eop_1"] = "Lebennin Marines",
    ["orodreth_rk"] = "Lebennin Marines",
    ["Kavatha_eop_1"] = "Dragon-Wrath Swiftblades",
    ["Rudaz_eop_1"] = "Dragon-Wrath Shields",
    ["Jasur_eop_1"] = "Suriut Chariots",
    ["Ubaadah_eop_1"] = "Troll-men Champions",
    ["Khaldoon_eop_1"] = "Hasharii Blades",
    ["Umaarah_eop_1"] = "Troll-men Warriors",
    ["ancantar_3"] = "Temple Knights",
    ["alatar_1"] = "Iron Fist Hammers",
    ["pallando_1"] = "Blacklock Engineers",
    ["ancantar_1"] = "Temple Knights",
    ["thranduil_union"] = "Aredhirith",
    ["legolas_union"] = "Hin e-Daur",
    ["orthordir_union"] = "Elvenkings Gateguard",
    ["enpremi_union"] = "Galadhrim Swordsmen",
    ["rumil_union"] = "Lothlorien Marchwardens",
    ["orophin_union"] = "Lothlorien Marchwardens",
    ["celeborn_union"] = "Berio I Ngelaidh",
    ["haldir_union"] = "Galadhrim Archers",
    ["gandalf_2"] = "Arthedain Royal Guard",
    ["gandalf_1"] = "Cardolan Riders",
    ["guardian_moria_1"] = "Goblin Bodyguards",
    ["oin_1"] = "Khazad-dum Reclaimers",
    ["balrog_1"] = "Balrog",
    ["Ja_Sur_eop_1"] = "Loke Rim Bodyguard",
    ["Gazluk_eop_1"] = "Temple Wards",
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
    local faction = char.character.faction.name
    temp_gen_units = {}
    for i = 0, #gen_units_list[faction]["T1"] do
        local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list[faction]["T1"][i])
        if eduEntry ~= nil then
            if eduEntry:hasOwnership(eur_playerFactionId) then
                table.insert(temp_gen_units, gen_units_list[faction]["T1"][i])
            end
        end
    end
    if rank > 110 then
        for i = 0, #gen_units_list[faction]["T2"] do
            local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list[faction]["T2"][i])
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(eur_playerFactionId) then
                    table.insert(temp_gen_units, gen_units_list[faction]["T2"][i])
                end
            end
        end
    end
    if rank > 170 then
        for i = 0, #gen_units_list[faction]["T3"] do
            local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list[faction]["T3"][i])
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(eur_playerFactionId) then
                    table.insert(temp_gen_units, gen_units_list[faction]["T3"][i])
                end
            end
        end
    end
    traits_temp = {}
    eurListTraits(char)
    printTable(traits_temp)
    for i = 1, #traits_temp do 
        if tableContains(combo_labtrait_list, traits_temp[i]) then
            local eduEntry = M2TWEOPDU.getEduEntryByType(labtrait_units_list[traits_temp[i]])
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(eur_playerFactionId) then
                    table.insert(temp_gen_units, labtrait_units_list[traits_temp[i]])
                end
            end
        end
    end
    if tableContains(combo_labtrait_list, char.label) then
        local eduEntry = M2TWEOPDU.getEduEntryByType(labtrait_units_list[char.label])
        if eduEntry ~= nil then
            if eduEntry:hasOwnership(eur_playerFactionId) then
                table.insert(temp_gen_units, labtrait_units_list[char.label])
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
                        --char.label = char.shortName..tostring(eur_turn_number)
                        char:giveValidLabel()
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
                        if temp_char.characterRecord.label == "" then
                            --char.label = char.shortName..tostring(eur_turn_number)
                            temp_char.characterRecord:giveValidLabel()
                        end
                        if persistent_gen_list_reset[temp_char.characterRecord.label] == nil then
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
                                        persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                    end
                                else
                                    persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                    if not labtrait_units_list[temp_char.characterRecord.label] then
                                        table.insert(combo_labtrait_list, temp_char.characterRecord.label)
                                        labtrait_units_list[temp_char.characterRecord.label] = temp_char.bodyguards.eduEntry.eduType
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
                    if character.characterRecord.label == "" then
                        --char.label = char.shortName..tostring(eur_turn_number)
                        character.characterRecord:giveValidLabel()
                    end
                    if persistent_gen_list_reset[temp_char.characterRecord.label] == nil then
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
                                    persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                end
                            else
                                persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                if not labtrait_units_list[temp_char.characterRecord.label] then
                                    table.insert(combo_labtrait_list, temp_char.characterRecord.label)
                                    labtrait_units_list[temp_char.characterRecord.label] = temp_char.bodyguards.eduEntry.eduType
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
                    if temp_char.characterRecord.label == "" then
                        --char.label = char.shortName..tostring(eur_turn_number)
                        temp_char.characterRecord:giveValidLabel()
                    end
                    if persistent_gen_list_reset[temp_char.characterRecord.label] == nil then
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
                                    persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                end
                            else
                                persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                if not labtrait_units_list[temp_char.characterRecord.label] then
                                    table.insert(combo_labtrait_list, temp_char.characterRecord.label)
                                    labtrait_units_list[temp_char.characterRecord.label] = temp_char.bodyguards.eduEntry.eduType
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
