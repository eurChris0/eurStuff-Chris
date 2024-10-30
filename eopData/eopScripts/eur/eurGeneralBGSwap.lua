temp_gen_units_target = 0
temp_gen_units_target_clicked = false
temp_gen_units = {}

temp_gen_units = {}

guard_add = 0
temp_used = false

temp_com_inf = 0

gen_rank_char = nil
gen_units_char = nil

conquer_traits = {
    ["FactionConqueror"] = 1,
    ["VictorVirtue"] = 1,
    ["MinasIthilLiberator"] = 0,
    ["MinasIthilConqueror"] = 0,
    ["MinasTirithConqueror"] = 0,
    ["MinasTirithSacker"] = 0,
    ["PelargirConqueror"] = 0,
    ["PelargirSacker"] = 0,
    ["DolAmrothConqueror"] = 0,
    ["DolAmrothSacker"] = 0,
    ["EdorasConqueror"] = 0,
    ["EdorasPillager"] = 0,
    ["HornburgConqueror"] = 0,
    ["FennasDruinConqueror"] = 0,
    ["FennasDruinPillager"] = 0,
    ["FornostErainConqueror"] = 0,
    ["BreeConqueror"] = 0,
    ["BreePillager"] = 0,
    ["BeornsHallsConqueror"] = 0,
    ["BeornsHallsPillager"] = 0,
    ["DaleConqueror"] = 0,
    ["DalePlunderer"] = 0,
    ["EsgarothConqueror"] = 0,
    ["EsgarothPillager"] = 0,
    ["CarasSantConqueror"] = 0,
    ["CarasSantSacker"] = 0,
    ["UmbarConqueror"] = 0,
    ["UmbarSacker"] = 0,
    ["FaenobelConqueror"] = 0,
    ["FaenobelSacker"] = 0,
    ["KhandConqueror"] = 0,
    ["KhandSacker"] = 0,
    ["MistrandConqueror"] = 0,
    ["MistrandSacker"] = 0,
    ["MithlondConqueror"] = 0,
    ["MithlondDespoiler"] = 0,
    ["ImladrisConqueror"] = 0,
    ["ImladrisDespoiler"] = 0,
    ["CarasGaladhonConqueror"] = 0,
    ["CarasGaladhonDespoiler"] = 0,
    ["ThranduilsHallsConqueror"] = 0,
    ["ThranduilsHallsDespoiler"] = 0,
    ["EreborConqueror"] = 0,
    ["EreborPlunderer"] = 0,
    ["ThorinsHallsConqueror"] = 0,
    ["ThorinsHallsPlunderer"] = 0,
    ["CarnDumConqueror"] = 0,
    ["GundabadLiberator"] = 0,
    ["GundabadConqueror"] = 0,
    ["DainsHallsLiberator"] = 0,
    ["DainsHallsConqueror"] = 0,
    ["WestMoriaLiberator"] = 0,
    ["WestMoriaConqueror"] = 0,
    ["EastMoriaLiberator"] = 0,
    ["EastMoriaConqueror"] = 0,
    ["GoblintownConqueror"] = 0,
    ["DolGuldurConqueror"] = 0,
    ["AmonLancLiberator"] = 0,
    ["IsengardConqueror"] = 0,
    ["KirikhgatholConqueror"] = 0,
    ["KirikhgatholPlunderer"] = 0,
    ["DunLarachConqueror"] = 0,
    ["DunLarachPillager"] = 0,
    ["AlcfudConqueror"] = 0,
    ["AlcfudPillager"] = 0,
    ["MorannonConqueror"] = 0,
    ["BaradDurConqueror"] = 0,
    ["BattleChivalryGood"] = 7,
    ["BattleChivalryEvil"] = 7,
  }
  
  conquer_traits_units = {
    ["special"] = {
        "Pale Uruks",
        "Dunedain Steelbowmen",
        "Citadel Guard",
        "Temple Knights",
        "Hearthguard",
        "Elvellyn Hammerguard",
        "Framsguard",
        "Witch-Realm Inquisitors",
        "Enedwaith Marksmen",
        "Troll-men Champions",
        "Warlords Kataphracts",
        "Dragons Wrath Guardians",
        "Mithril Bodyguard",
        "Gabilgathol Guard",
        "Axeguard of Erebor",
        "Aredhirith",
        "Berio I Ngelaidh",
        "Elderinwe Roquen",
        "Saurons Will",
        "Castellans of Dol Guldur",
        "Black Pit Berserkers",
        "Guard of the Hand",
    },
  }

original_general_units_list = {}

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
    ["normans"] = {
        old = "Merchant Infantry",
        new = "Dunedain Wardens",
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
    ["saxons"] = {
        old = "Noldorin Bodyguards",
        new = "Spear Quendi",
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
        ["special"] = {
            "The Red Shields of Erkenbrand",
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
            [2] = "Gondor Archers",
            [3] = "Gondor Cavalry",
        },
        ["T3"] = {
            [0] = "Marksmen of Cair Andros",
            [1] = "Gondor Bodyguard",
        },
        ["special"] = {
            "Citadel Guard",
        },
    },
    ["turks"] = {
        ["T1"] = {
            [0] = "Dunedain Wardens",
            [1] = "Dunedain Scouts",
        },
        ["T2"] = {
            [0] = "Dunedain Armsmen",
            [1] = "Dunedain Rangers",
        },
        ["T3"] = {
            [0] = "Sons of Numenor",
            [1] = "Fornost-Erain Knights",
            [2] = "Dunedain Bodyguard",
        },
        ["special"] = {
            "Dunedain Steelbowmen",
        },
    },
    ["normans"] = {
        ["T1"] = {
            [0] = "Dunedain Wardens",
            [1] = "Dunedain Scouts",
        },
        ["T2"] = {
            [0] = "Dunedain Armsmen",
            [1] = "Dunedain Rangers",
        },
        ["T3"] = {
            [0] = "Sons of Numenor",
            [1] = "Fornost-Erain Knights",
            [2] = "Dunedain Bodyguard",
        },
        ["special"] = {
            "Dunedain Steelbowmen",
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
        ["special"] = {
            "Naru n'Aru Sentinels",
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
        ["special"] = {
            "Hearthguard",
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
        },
        ["special"] = {
            "High Paladins",
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
        ["special"] = {
            "Framsguard",
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
        ["special"] = {
            "Witch-Realm Inquisitors",
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
        ["special"] = {
            "Wulfguard Axemen",
        },
    },
    ["teutonic_order"] = {
        ["T1"] = {
            [0] = "Mordag Fishermen",
            [1] = "Faolan Borderguard",
            [2] = "Keefei Huntsmen",
            [3] = "Mochaini Touta",
        },
        ["T2"] = {
            [0] = "Mochaini Ambaxtoi",
            [1] = "Mordag Skirmishers",
            [2] = "Faolan Warriors",
            [3] = "Liadan Billmen",
        },
        ["T3"] = {
            [0] = "Clan Heralds",
            [1] = "Enedwaith Guardsmen",
            [2] = "Enedwaith Marksmen",
        },
        ["special"] = {
            "Tir Croicoill Cosantoiri",
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
        ["special"] = {
            "Troll-men Champions",
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
        ["special"] = {
            "Warlords Kataphracts",
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
        ["special"] = {
            "Dragons Wrath Guardians",
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
        ["special"] = {
            "Mithril Bodyguard",
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
        ["special"] = {
            "Gabilgathol Guard",
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
        ["special"] = {
            "Axeguard of Erebor",
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
        ["special"] = {
            "Aredhirith",
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
        ["special"] = {
            "Berio I Ngelaidh",
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
            [0] = "Sindar Axemen",
            [1] = "Sindar Spearmen",
            [2] = "Sindar Archers",
            [3] = "Sindar Riders",
        },
        ["T3"] = {
            [0] = "Heavy Falathrim Axeguard",
            [1] = "Heavy Falathrim Archers",
            [2] = "Heavy Falathrim Skirmishers",
            [3] = "Calaquendi Lords",
        },
        ["special"] = {
            "Mithlond Nobles",
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
        ["special"] = {
            "Temple Knights",
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
        ["special"] = {
            "Castellans of Dol Guldur",
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
        ["special"] = {
            "Saurons Will",
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
        ["special"] = {
            "Pale Uruks",
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
            [1] = "Champions of the White-Hand",
        },
        ["special"] = {
            "Guard of the Hand",
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
            [0] = "Amanyar Swordmasters",
            [1] = "Amanyar Archers",
            [2] = "Amanyar Riders",
            [3] = "Amanyar Rangers",
        },
        ["T3"] = {
            [0] = "Noldorin Defenders",
            [1] = "Noldorin Archers",
            [2] = "Noldorin Bodyguards",
        },
        ["special"] = {
            "Elderinwe Roquen",
        },
    },
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
    ["Gildor"] = "Noldorin Archers",
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
    ["agandaur_1"] = "Northguard",
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

local cost = 0

function swapBGButton()
    if not options_gen_upgrades then return end
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
    if not options_gen_upgrades then return end
    if not temp_char_stuff then
        temp_gen_units_target = 0
        temp_gen_units = {}
    else
        if gen_units_char ~= temp_char_stuff then
            temp_gen_units_target = 0
            temp_gen_units = {}
        end
    end
    cost = 0
    local army = nil
    local name = ""
    ImGui.SetNextWindowPos(10*eurbackgroundWindowSizeRight, 10*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(1)
    ImGui.SetNextWindowSize(840*eurbackgroundWindowSizeRight, 600*eurbackgroundWindowSizeBottom)
    ImGui.Begin("swap_bg_window_background", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    if bg_small_1 then
        ImGui.Image(bg_small_1.img, 835*eurbackgroundWindowSizeRight, 590*eurbackgroundWindowSizeBottom)
    end
    ImGui.SetNextWindowPos(10*eurbackgroundWindowSizeRight, 85*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowBgAlpha(0.5)
    ImGui.BeginChild("swap_bg_child_1", 840*eurbackgroundWindowSizeRight, 450*eurbackgroundWindowSizeBottom, ImGuiChildFlags.FrameStyle)
    ImGui.NewLine()
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.BeginChild("swap_bg_child_sub_1", 370*eurbackgroundWindowSizeRight, 420*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoDecoration)
    local UI_MANAGER = gameDataAll.get().uiCardManager
    local selectedUnit=UI_MANAGER:getSelectedUnitCard(0)
    if selectedUnit == nil then
        local sett=UI_MANAGER.selectedSettlement
        if sett ~= nil then
            if sett.governor ~= nil then
                if sett.governor:getTypeID() == 7 then
                    selectedUnit = sett.governor.bodyguards
                end
            end
        end
    end
    if selectedUnit ~= nil then
        if selectedUnit.army == nil then return end
        if selectedUnit.army:findInSettlement() ~= nil then
            if selectedUnit.character ~= nil then
                temp_char_stuff = selectedUnit.character
                if temp_char_stuff:getTypeID() == 7 then
                    ImGui.Separator()
                    ImGui.Text(temp_char_stuff.characterRecord.localizedDisplayName)
                    ImGui.Text("Current Bodyguard: "..temp_char_stuff.bodyguards.eduEntry.eduType)
                    if char_portraits[temp_char_stuff.characterRecord.portrait_custom] then
                        ImGui.Image(char_portraits[temp_char_stuff.characterRecord.portrait_custom].img,img_x, img_y)
                        ImGui.SameLine()
                        if eur_tga_table[temp_char_stuff.bodyguards.eduEntry.unitCardTga] then
                            ImGui.Image(eur_tga_table[temp_char_stuff.bodyguards.eduEntry.unitCardTga].img,img_x, img_y)
                        end
                    end
                    if temp_char_stuff.characterRecord.portrait then
                        local portrait = temp_char_stuff.characterRecord.portrait
                        portrait = string.gsub(portrait, "mods/Divide_and_Conquer_EUR_EOP4/data/ui/"..eur_localculture.."/portraits/portraits/young/generals/", "")
                        if char_portraits[portrait] then
                            ImGui.Image(char_portraits[portrait].img,80,80)
                            ImGui.SameLine()
                            if eur_tga_table[temp_char_stuff.bodyguards.eduEntry.unitCardTga] then
                                ImGui.Image(eur_tga_table[temp_char_stuff.bodyguards.eduEntry.unitCardTga].img,img_x, img_y)
                            end
                        end
                    end
                    char_rank = genRankCheck(nil, temp_char_stuff.characterRecord)
                    name = temp_char_stuff.characterRecord.shortName..tostring(temp_char_stuff.characterRecord.label)
                    genUnitCheck(temp_char_stuff.characterRecord, char_rank)
                    temp_gen_units = removeDuplicates(temp_gen_units)
                    --temp_gen_units_target, temp_gen_units_target_clicked = ImGui.Combo("", temp_gen_units_target, temp_gen_units, #temp_gen_units, #temp_gen_units+1)
                    if temp_gen_units[temp_gen_units_target+1] then
                        local edu = M2TWEOPDU.getEduEntryByType(temp_gen_units[temp_gen_units_target+1])
                        if edu ~= nil then
                            cost = M2TWEOPDU.getEduEntryByType(temp_gen_units[temp_gen_units_target+1]).recruitCost
                        end
                    end
                    ImGui.Text("Personal Guard: "..tostring(temp_char_stuff.characterRecord.personalSecurity))
                    if temp_char_stuff.characterRecord.personalSecurity < 10 then
                        ImGui.Separator()
                        ImGui.Text("Add Personal Guard(500 each): ")
                        if guard_add+temp_char_stuff.characterRecord.personalSecurity > 10 then
                            guard_add = 0
                        end
                        if (ImGui.Button("-", 25, 25)) then
                            if guard_add > 0 then
                                guard_add=guard_add-1
                            end
                        end
                        ImGui.SameLine()
                        ImGui.Text(tostring(guard_add))
                        ImGui.SameLine()
                        if (ImGui.Button("+", 25, 25)) then
                            if guard_add < 10-temp_char_stuff.characterRecord.personalSecurity then
                                guard_add=guard_add+1
                            end
                        end
                        --guard_add, temp_used = ImGui.SliderInt("", guard_add, 0, (10-temp_char_stuff.characterRecord.personalSecurity))
                        if guard_add > 0 then
                            cost = cost+(guard_add*500)
                        end
                        ImGui.Separator()
                    end
                    if temp_gen_units[temp_gen_units_target+1] then
                        if eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[temp_gen_units_target+1]).unitCardTga] then
                            ImGui.Image(eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[temp_gen_units_target+1]).unitCardTga].img,img_x, img_y)
                        end
                        ImGui.SameLine()
                        ImGui.BeginGroup()
                        ImGui.Text(temp_gen_units[temp_gen_units_target+1])
                        ImGui.Text("Cost: "..tostring(cost))
                        ImGui.EndGroup()
                    end
                end
            else
                ImGui.TextColored(0,1,0,1,"Please select a general unit card.")
                temp_gen_units_target = 0
                temp_gen_units = {}
            end
        end
    else
        ImGui.TextColored(0,1,0,1,"Please select a general unit card.")
        temp_gen_units_target = 0
        temp_gen_units = {}
    end
    ImGui.EndChild()
    ImGui.SameLine()
    ImGui.SetNextWindowBgAlpha(0)
    ImGui.BeginChild("swap_bg_child_sub_2", 450*eurbackgroundWindowSizeRight, 420*eurbackgroundWindowSizeBottom, ImGuiWindowFlags.NoDecoration)
    ImGui.Separator()
    ImGui.Text("T1:")
    for i = 1, #temp_gen_units do
        if temp_gen_units[i] then
            if tableContains(gen_units_list[eur_player_faction.name]["T1"], temp_gen_units[i]) then
                if eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga] then
                    if ImGui.ImageButton("swapBGButton_button_t1_0"..tostring(i),eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga].img,img_x, img_y) then
                        temp_gen_units_target=i-1
                    end
                end
                local hovered = ImGui.IsItemHovered()
                if hovered then
                    ImGui.BeginTooltip()
                    ImGui.Text(temp_gen_units[i])
                    ImGui.EndTooltip()
                end
                if i == 4 then
                    ImGui.NewLine()
                else
                    ImGui.SameLine()
                end
            end
        end
    end
    ImGui.NewLine()
    ImGui.Text("T2:")
    for i = 1, #temp_gen_units do
        if temp_gen_units[i] then
            if tableContains(gen_units_list[eur_player_faction.name]["T2"], temp_gen_units[i]) then
                if eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga] then
                    if ImGui.ImageButton("swapBGButton_button_t2_0"..tostring(i),eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga].img,img_x, img_y) then
                        temp_gen_units_target=i-1
                    end
                end
                local hovered = ImGui.IsItemHovered()
                if hovered then
                    ImGui.BeginTooltip()
                    ImGui.Text(temp_gen_units[i])
                    ImGui.EndTooltip()
                end
                if i == 4 then
                    ImGui.NewLine()
                else
                    ImGui.SameLine()
                end
            end
        end
    end
    ImGui.NewLine()
    ImGui.Text("T3:")
    for i = 1, #temp_gen_units do
        if temp_gen_units[i] then
            if tableContains(gen_units_list[eur_player_faction.name]["T3"], temp_gen_units[i]) then
                if eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga] then
                    if ImGui.ImageButton("swapBGButton_button_t3_0"..tostring(i),eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga].img,img_x, img_y) then
                        temp_gen_units_target=i-1
                    end
                end
                local hovered = ImGui.IsItemHovered()
                if hovered then
                    ImGui.BeginTooltip()
                    ImGui.Text(temp_gen_units[i])
                    ImGui.EndTooltip()
                end
                if i == 4 then
                    ImGui.NewLine()
                else
                    ImGui.SameLine()
                end
            end
        end
    end
    ImGui.NewLine()
    ImGui.Text("Special:")
    for i = 1, #temp_gen_units do
        if temp_gen_units[i] then
            if not tableContains(gen_units_list[eur_player_faction.name]["T1"], temp_gen_units[i]) then
                if not tableContains(gen_units_list[eur_player_faction.name]["T2"], temp_gen_units[i]) then
                    if not tableContains(gen_units_list[eur_player_faction.name]["T3"], temp_gen_units[i]) then
                        if eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga] then
                            if ImGui.ImageButton("swapBGButton_button_s_0"..tostring(i),eur_tga_table[M2TWEOPDU.getEduEntryByType(temp_gen_units[i]).unitCardTga].img,img_x, img_y) then
                                temp_gen_units_target=i-1
                            end
                        end
                        local hovered = ImGui.IsItemHovered()
                        if hovered then
                            ImGui.BeginTooltip()
                            ImGui.Text(temp_gen_units[i])
                            ImGui.EndTooltip()
                        end
                        if i == 4 then
                            ImGui.NewLine()
                        else
                            ImGui.SameLine()
                        end
                    end
                end
            end
        end
    end
    ImGui.NewLine()
    ImGui.EndChild()
    ImGui.EndChild()
    if temp_char_stuff then
        if temp_char_stuff.settlement then
            army = temp_char_stuff.settlement.army
            if army ~= nil then
                if persistent_gen_list[name] ~= nil then
                    if persistent_gen_list[name].cooldown == 0 then
                        if temp_gen_units[temp_gen_units_target+1] then
                            if army.numOfUnits < 20 then
                                if temp_char_stuff.faction.money >= cost then
                                    if (centeredImageButton("Accept", 80, 50, -40)) then
                                        show_bg_accept = true
                                        swap_bg_window = false
                                    end
                                    ImGui.SameLine()
                                else
                                    ImGui.TextColored(1,0,0,1,"Not enough gold.")
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
    end
    if (centeredImageButton("Close", 80, 50, 40)) then
        swap_bg_window = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
    gen_units_char = temp_char_stuff
end

function bgSwapAccept()
    ImGui.SetNextWindowSize(400*eurbackgroundWindowSizeRight, 100*eurbackgroundWindowSizeBottom)
    ImGui.SetNextWindowPos(760*eurbackgroundWindowSizeRight, 440*eurbackgroundWindowSizeBottom)
    ImGui.Begin("bg_accept_1", true, bit.bor(ImGuiWindowFlags.NoDecoration))
    eurStyle("basic_1", true)
    centeredText("Swap bodyguard to "..temp_gen_units[temp_gen_units_target+1].." for "..tostring(cost).." gold?",0)
    ImGui.NewLine()
    centeredText("Cooldown: 10 turns.")
    if (centeredImageButton("Yes", 80, 50, -40)) then
        local name = temp_char_stuff.characterRecord.shortName..tostring(temp_char_stuff.characterRecord.label)
        persistent_gen_list[name].cooldown = bg_swap_cooldown
        temp_char_stuff.characterRecord.personalSecurity = (temp_char_stuff.characterRecord.personalSecurity+guard_add)
        stratmap.game.callConsole("add_money", "-" .. tostring(cost))
        setBodyguard(temp_char_stuff, (temp_gen_units[temp_gen_units_target+1]), temp_char_stuff.bodyguards.exp, temp_char_stuff.bodyguards.weaponLVL, 1, "")
        swap_bg_window = false
        show_bg_accept = false
        temp_gen_units_target = 0
    end
    if EOP_WAVS["uicah_menuclick1"] ~= nil then
        M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
    end
    ImGui.SameLine()
    if (centeredImageButton("No", 80, 50, 40)) then
        swap_bg_window = true
        show_bg_accept = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end

function genUnitCheck(char, char_rank)
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
    if char_rank > 110 then
        for i = 0, #gen_units_list[faction]["T2"] do
            local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list[faction]["T2"][i])
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(eur_playerFactionId) then
                    table.insert(temp_gen_units, gen_units_list[faction]["T2"][i])
                end
            end
        end
    end
    if char_rank > 170 then
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
    --eurListTraits(char)
    --printTable(traits_temp)
    for k, v in pairs(labtrait_units_list) do 
        if char:getTraitLevel(k) > 0 then
            local eduEntry = M2TWEOPDU.getEduEntryByType(v)
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(eur_playerFactionId) then
                    table.insert(temp_gen_units, v)
                end
            end
        end
    end
    for k, v in pairs(conquer_traits) do 
        if char:getTraitLevel(k) > v then
            for i = 1, #gen_units_list[faction]["special"] do
                local eduEntry = M2TWEOPDU.getEduEntryByType(gen_units_list[faction]["special"][i])
                if eduEntry ~= nil then
                    if eduEntry:hasOwnership(eur_playerFactionId) then
                        table.insert(temp_gen_units, gen_units_list[faction]["special"][i])
                    end
                end
            end
        end
    end
    if labtrait_units_list[char.label] then
        local eduEntry = M2TWEOPDU.getEduEntryByType(labtrait_units_list[char.label])
        if eduEntry ~= nil then
            if eduEntry:hasOwnership(eur_playerFactionId) then
                table.insert(temp_gen_units, labtrait_units_list[char.label])
            end
        end
    end
    if char:getTraitLevel("FactionLeader") > 0 then
        if leaderheir_combi_list[char.character.faction.name] then
            local eduEntry = M2TWEOPDU.getEduEntryByType(leaderheir_combi_list[char.character.faction.name].leader.unit)
            if eduEntry ~= nil then
                if eduEntry:hasOwnership(char.character.faction.factionID) then
                    table.insert(temp_gen_units, leaderheir_combi_list[char.character.faction.name].leader.unit)
                end
            end
        end
    end
    if current_heir_check[0] == char then
        if char:getTraitLevel("FactionHeir") > 0 then
            if leaderheir_combi_list[char.character.faction.name] then
                local eduEntry = M2TWEOPDU.getEduEntryByType(leaderheir_combi_list[char.character.faction.name].heir.unit)
                if eduEntry ~= nil then
                    if eduEntry:hasOwnership(char.character.faction.factionID) then
                        table.insert(temp_gen_units, leaderheir_combi_list[char.character.faction.name].heir.unit)
                    end
                end
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
        if gen_rank_char ~= char then
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
        else
            return temp_com_inf
        end
    end
end

function setBGSize(faction, character, unit)
    if options_first_run then return end
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
                                        local level = (temp_char.characterRecord.command+temp_char.characterRecord.loyalty)
                                        if level > 8 then
                                            local rand = math.random(1, #gen_units_list[faction.name]["T2"])
                                            new_bg = gen_units_list[faction.name]["T2"][rand-1]
                                        else
                                            local rand = math.random(1, #gen_units_list[faction.name]["T1"])
                                            new_bg = gen_units_list[faction.name]["T1"][rand-1]
                                        end
                                        if new_bg then
                                            setBodyguard(temp_char, (new_bg), temp_char.bodyguards.exp, temp_char.bodyguards.weaponLVL, 0, "")
                                            persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                        end
                                    end
                                else
                                    persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                    if not labtrait_units_list[temp_char.characterRecord.label] then
                                        --table.insert(combo_labtrait_list, temp_char.characterRecord.label)
                                        labtrait_units_list[temp_char.characterRecord.label] = temp_char.bodyguards.eduEntry.eduType
                                    end
                                end
                            end
                        end
                    else
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
                                        local level = (temp_char.characterRecord.command+temp_char.characterRecord.loyalty)
                                        if level > 7 then
                                            if math.random(1, 100) > 75 then
                                                local rand = math.random(1, #gen_units_list[faction.name]["special"])
                                                new_bg = gen_units_list[faction.name]["special"][rand-1]
                                            else
                                                local rand = math.random(1, #gen_units_list[faction.name]["T3"])
                                                new_bg = gen_units_list[faction.name]["T3"][rand-1]
                                            end
                                        else
                                            local rand = math.random(1, #gen_units_list[faction.name]["T2"])
                                            new_bg = gen_units_list[faction.name]["T2"][rand-1]
                                        end
                                        if new_bg then
                                            setBodyguard(temp_char, (new_bg), temp_char.bodyguards.exp, temp_char.bodyguards.weaponLVL, 0, "")
                                            persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                        end
                                    end
                                else
                                    persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                    if not labtrait_units_list[temp_char.characterRecord.label] then
                                        --table.insert(combo_labtrait_list, temp_char.characterRecord.label)
                                        labtrait_units_list[temp_char.characterRecord.label] = temp_char.bodyguards.eduEntry.eduType
                                    end
                                end
                            end
                        end
                    end
                    if not options_gen_bg_size then return end
                    local un_max = temp_char.bodyguards.soldierCountStratMapMax
                    local un_min = (un_max / bg_min_size_multi)
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
                    if persistent_gen_list_reset[character.characterRecord.label] == nil then
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
                                    local level = (temp_char.characterRecord.command+temp_char.characterRecord.loyalty)
                                    if level > 7 then
                                        if math.random(1, 100) > 75 then
                                            local rand = math.random(1, #gen_units_list[faction.name]["special"])
                                            new_bg = gen_units_list[faction.name]["special"][rand-1]
                                        else
                                            local rand = math.random(1, #gen_units_list[faction.name]["T3"])
                                            new_bg = gen_units_list[faction.name]["T3"][rand-1]
                                        end
                                    else
                                        local rand = math.random(1, #gen_units_list[faction.name]["T2"])
                                        new_bg = gen_units_list[faction.name]["T2"][rand-1]
                                    end
                                    if new_bg then
                                        setBodyguard(temp_char, (new_bg), temp_char.bodyguards.exp, temp_char.bodyguards.weaponLVL, 0, "")
                                        persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                    end
                                end
                            else
                                persistent_gen_list_reset[character.characterRecord.label] = true
                                if not labtrait_units_list[character.characterRecord.label] then
                                    --table.insert(combo_labtrait_list, character.characterRecord.label)
                                    labtrait_units_list[character.characterRecord.label] = character.bodyguards.eduEntry.eduType
                                end
                            end
                        end
                    end
                end
                if not options_gen_bg_size then return end
                local un_max = character.bodyguards.soldierCountStratMapMax
                local un_min = (un_max / bg_min_size_multi)
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
                                    local level = (temp_char.characterRecord.command+temp_char.characterRecord.loyalty)
                                    if level > 7 then
                                        if math.random(1, 100) > 75 then
                                            local rand = math.random(1, #gen_units_list[faction.name]["special"])
                                            new_bg = gen_units_list[faction.name]["special"][rand-1]
                                        else
                                            local rand = math.random(1, #gen_units_list[faction.name]["T3"])
                                            new_bg = gen_units_list[faction.name]["T3"][rand-1]
                                        end
                                    else
                                        local rand = math.random(1, #gen_units_list[faction.name]["T2"])
                                        new_bg = gen_units_list[faction.name]["T2"][rand-1]
                                    end
                                    if new_bg then
                                        setBodyguard(temp_char, (new_bg), temp_char.bodyguards.exp, temp_char.bodyguards.weaponLVL, 0, "")
                                        persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                    end
                                end
                            else
                                persistent_gen_list_reset[temp_char.characterRecord.label] = true
                                if not labtrait_units_list[temp_char.characterRecord.label] then
                                    --table.insert(combo_labtrait_list, temp_char.characterRecord.label)
                                    labtrait_units_list[temp_char.characterRecord.label] = temp_char.bodyguards.eduEntry.eduType
                                end
                            end
                        end
                    end
                end
                if not options_gen_bg_size then return end
                local un_max = temp_char.bodyguards.soldierCountStratMapMax
                local un_min = (un_max / bg_min_size_multi)
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

gen_pool_info = {}
gen_pool_reset = false

function genPoolReset()
    local reset = false
    if not gen_pool_reset then return end
    for k, v in pairs(gen_pool_info) do
        local sett = M2TW.stratMap:getSettlement(gen_pool_info[k].name)
        for i = 0, sett.recruitmentPoolCount - 1 do
            local pool = sett:getSettlementRecruitmentPool(i)
            if pool.eduIndex == gen_pool_info[k].eduIndex then
                if pool.availablePool == gen_pool_info[k].availablePool then
                    --
                else
                    pool.availablePool = gen_pool_info[k].availablePool
                    reset = true
                end
            end
        end
    end
    if reset then
        gen_pool_reset = false
        gen_pool_info = {}
    end
end

function setBodyguard(character, newBodyguardType, expLvl, armourLvl, weaponLvl, bgAlias)
    if not options_gen_upgrades then return end
    local edu = M2TWEOPDU.getEduEntryByType(newBodyguardType)
    if edu == nil then return end
    print('Setting random new bodyguard for')
    print(character.characterRecord.localizedDisplayName)
    print(newBodyguardType)
    local expLvl = expLvl or 0;
    local armourLvl = armourLvl or 0;
    local weaponLvl = weaponLvl or 0;
    local originalBodyguard = character.bodyguards;
    local pool_check = originalBodyguard
    if pool_check.eduEntry.eduType == default_general_units[eur_player_faction.name].old then
        local sett = character.settlement
        if sett then
            for i = 0, sett.recruitmentPoolCount - 1 do
                local pool = sett:getSettlementRecruitmentPool(i)
                if pool.eduIndex == pool_check.eduEntry.index then
                    if not gen_pool_info[sett.name] then
                        gen_pool_info[sett.name] = {}
                    end
                    gen_pool_info[sett.name].availablePool = pool.availablePool
                    gen_pool_info[sett.name].eduIndex = pool.eduIndex
                    gen_pool_info[sett.name].name = sett.name
                    gen_pool_reset = true
                end
            end
        end
    end
    --  does the stack have space for a new unit?
    if originalBodyguard.army.numOfUnits < 20 then
        newBodyguard = originalBodyguard.army:createUnit(newBodyguardType, expLvl, armourLvl, weaponLvl);
        newBodyguard.alias = bgAlias
        character:setBodyguardUnit(newBodyguard);
        setBGSize(nil, character, nil)
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


function genUnlockNotifation(faction)
    if not options_gennotif then return end
    if faction.isPlayerControlled == 0 then return end
    for i = 0, faction.numOfCharacters - 1 do
        local char = faction:getCharacter(i)
        if char:getTypeID() == 7 then
            if char.label == "" then
                char:giveValidLabel()
            end
            char = char.characterRecord
            local char_rank = genRankCheck(nil, char)
            if not char_unlocks[char.label] then
                char_unlocks[char.label] = {}
                char_unlocks[char.label].high = 0
                char_unlocks[char.label].t2 = false
                char_unlocks[char.label].t3 = false
                char_unlocks[char.label].heir = false
                char_unlocks[char.label].leader = false
                char_unlocks[char.label].special = false
            end
            if char_rank == nil then return end
            if char_rank > char_unlocks[char.label].high then
                if not char_unlocks[char.label].t2 then
                    if char_rank > 110 then
                        char_unlocks[char.label].t2 = true
                        local un_list = "\n"
                        for i = 0, #gen_units_list[faction.name]["T2"] - 1 do 
                            un_list = un_list.."\n"..gen_units_list[faction.name]["T2"][i]
                        end
                        stratmap.game.historicEvent("militaryunithired", "Bodyguard Unlocked", "A new tier of units is has been unlocked for this general:\n\n"..char.localizedDisplayName..un_list)
                    end
                end
                if not char_unlocks[char.label].t3 then
                    if char_rank > 170 then
                        local un_list = "\n"
                        for i = 0, #gen_units_list[faction.name]["T3"] - 1 do 
                            un_list = un_list.."\n"..gen_units_list[faction.name]["T3"][i]
                        end
                        char_unlocks[char.label].t3 = true
                        stratmap.game.historicEvent("militaryunithired", "Bodyguard Unlocked", "A new tier of units is has been unlocked for this general:\n\n"..char.localizedDisplayName..un_list)
                    end
                end
            end
            char_unlocks[char.label].high = char_rank
            if not char_unlocks[char.label].special then
                for k, v in pairs(conquer_traits) do 
                    if char:getTraitLevel(k) > v then
                        local un_list = "\n"
                        for i = 1, #gen_units_list[faction.name]["special"] do 
                            un_list = un_list.."\n"..gen_units_list[faction.name]["special"][i]
                        end
                        char_unlocks[char.label].special = true
                        stratmap.game.historicEvent("militaryunithired", "Bodyguard Unlocked", "A new tier of units is has been unlocked for this general:\n\n"..char.localizedDisplayName..un_list)
                    end
                end
            end
            if not char_unlocks[char.label].leader then
                if char:getTraitLevel("FactionLeader") > 0 then
                    local un_list = "\n"
                    un_list = un_list..leaderheir_combi_list[char.character.faction.name].leader.unit
                    char_unlocks[char.label].leader = true
                    stratmap.game.historicEvent("militaryunithired", "Bodyguard Unlocked", "A new tier of units is has been unlocked for this general:\n\n"..char.localizedDisplayName..un_list)
                end
            end
            if not char_unlocks[char.label].heir then
                if char:getTraitLevel("FactionHeir") > 0 then
                    local un_list = "\n"
                    un_list = un_list..leaderheir_combi_list[char.character.faction.name].heir.unit
                    char_unlocks[char.label].heir = true
                    stratmap.game.historicEvent("militaryunithired", "Bodyguard Unlocked", "A new tier of units is has been unlocked for this general:\n\n"..char.localizedDisplayName..un_list)
                end
            end
        end
    end
end

function dorwinionGeneralBGCheck()
    if not dorwinion_bg_check then
        if checkCounter("dorwinion_elf") then
            gen_units_list["byzantium"]["T3"][1] = "Moriquendi Sentinels"
            gen_units_list["byzantium"]["special"][1] = "Moriquendi Gladelords"
            dorwinion_bg_check = true
        end
        if checkCounter("dorwinion_men") then
            gen_units_list["byzantium"]["T3"][1] = "Vintner-Court Paladins"
            gen_units_list["byzantium"]["special"][1] = "Elvellyn Hammerguard"
            dorwinion_bg_check = true
        end
    end
end
