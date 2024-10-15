in_campaign_map = false

local temp_unit_choice = 1
local show_accept_button = false
local upgrade_message = ""
local unit_cost = 0
local temp_upgrade_unit = nil

local old_list = {
    [1]={["unit"]="Alcarondas Legion",["upgrade"]="Royal Legion of Armenelos",["experience"]=9,["cost"]=1,["event"]=""},
    [2]={["unit"]="Amanyar Archers",["upgrade"]="Noldorin Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [3]={["unit"]="Amanyar Pikes",["upgrade"]="Noldorin Defenders",["experience"]=7,["cost"]=1,["event"]=""},
    [4]={["unit"]="Amanyar Rangers",["upgrade"]="Amanyar Riders",["experience"]=5,["cost"]=0.5,["event"]=""},
    [5]={["unit"]="Amanyar Riders",["upgrade"]="Amanyar Rangers",["experience"]=5,["cost"]=0.5,["event"]=""},
    [6]={["unit"]="Amanyar Swordmasters",["upgrade"]="Noldorin Swords",["experience"]=7,["cost"]=1,["event"]=""},
    [7]={["unit"]="Angmarim Archers",["upgrade"]="Angmarim Infantry",["experience"]=2,["cost"]=0.5,["event"]=""},
    [8]={["unit"]="Angmarim Archers",["upgrade"]="Iron Crown Longbowmen",["experience"]=7,["cost"]=1,["event"]=""},
    [9]={["unit"]="Angmarim Infantry",["upgrade"]="Angmarim Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [10]={["unit"]="Angmarim Infantry",["upgrade"]="Iron Crown Warriors",["experience"]=7,["cost"]=1,["event"]=""},
    [11]={["unit"]="Arthedain Royal Guard",["upgrade"]="Grey Company",["experience"]=9,["cost"]=2,["event"]=""},
    [12]={["unit"]="Balaketh Axeguard",["upgrade"]="Belegaer Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [13]={["unit"]="Balaketh Axeguard",["upgrade"]="Alcarondas Legion",["experience"]=7,["cost"]=1,["event"]=""},
    [14]={["unit"]="Balaketh Axeguard",["upgrade"]="Belegaer Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [15]={["unit"]="Bandobras Archers",["upgrade"]="Watch Shirriffs",["experience"]=2,["cost"]=0.5,["event"]=""},
    [16]={["unit"]="Barding Marksmen",["upgrade"]="Hearthguard",["experience"]=7,["cost"]=1,["event"]=""},
    [17]={["unit"]="Belegaer Archers",["upgrade"]="Belegaer Footmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [18]={["unit"]="Belegaer Archers",["upgrade"]="Belegaer Pikemen",["experience"]=2,["cost"]=1,["event"]=""},
    [19]={["unit"]="Belegaer Archers",["upgrade"]="Numenorean Marksmen",["experience"]=7,["cost"]=nil,["event"]=""},
    [20]={["unit"]="Belegaer Footmen",["upgrade"]="Numenorean Cohort",["experience"]=7,["cost"]=1,["event"]=""},
    [21]={["unit"]="Belegaer Footmen",["upgrade"]="Belegaer Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [22]={["unit"]="Belegaer Footmen",["upgrade"]="Belegaer Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [23]={["unit"]="Belegaer Pikemen",["upgrade"]="Numenorean Shieldguard",["experience"]=7,["cost"]=1,["event"]=""},
    [24]={["unit"]="Belegaer Pikemen",["upgrade"]="Belegaer Footmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [25]={["unit"]="Belegaer Pikemen",["upgrade"]="Belegaer Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [26]={["unit"]="Beorning Axemen",["upgrade"]="Beorning Defenders",["experience"]=5,["cost"]=nil,["event"]=""},
    [27]={["unit"]="Beorning Defenders",["upgrade"]="Framsguard Dismounted Axemen",["experience"]=7,["cost"]=1,["event"]=""},
    [28]={["unit"]="Beorning Spearmen",["upgrade"]="Framsguard Dismounted Spearmen",["experience"]=7,["cost"]=1,["event"]=""},
    [29]={["unit"]="Black Uruk Halberds",["upgrade"]="Saurons Will",["experience"]=9,["cost"]=2,["event"]=""},
    [30]={["unit"]="Black Uruk Spears",["upgrade"]="Morgul Chosen",["experience"]=7,["cost"]=1,["event"]=""},
    [31]={["unit"]="Black Uruks",["upgrade"]="Saurons Will",["experience"]=9,["cost"]=2,["event"]=""},
    [32]={["unit"]="Blackshield Halberds",["upgrade"]="Bolgs Champions",["experience"]=9,["cost"]=2,["event"]=""},
    [33]={["unit"]="Blackshield Warriors",["upgrade"]="Orc Avengers",["experience"]=9,["cost"]=3,["event"]=""},
    [34]={["unit"]="Bow Quendi",["upgrade"]="Spear Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [35]={["unit"]="Bow Quendi",["upgrade"]="Sword Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [36]={["unit"]="Bow Quendi",["upgrade"]="Amanyar Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [37]={["unit"]="Breeland Militia",["upgrade"]="Sworn Defenders",["experience"]=5,["cost"]=1,["event"]="nd_choose_arnor"},
    [38]={["unit"]="Cardolan Riders",["upgrade"]="Fornost-Erain Knights",["experience"]=9,["cost"]=2,["event"]=""},
    [39]={["unit"]="Clan Axemen",["upgrade"]="Clan Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [40]={["unit"]="Clan Axemen",["upgrade"]="Clan Hunters",["experience"]=2,["cost"]=0.5,["event"]=""},
    [41]={["unit"]="Clan Axemen",["upgrade"]="Warband Blades",["experience"]=7,["cost"]=1,["event"]=""},
    [42]={["unit"]="Clan Hunters",["upgrade"]="Warband Sentries",["experience"]=7,["cost"]=1,["event"]=""},
    [43]={["unit"]="Clan Hunters",["upgrade"]="Clan Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [44]={["unit"]="Clan Hunters",["upgrade"]="Clan Axemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [45]={["unit"]="Clan Spearmen",["upgrade"]="Warband Host",["experience"]=7,["cost"]=1,["event"]=""},
    [46]={["unit"]="Clan Spearmen",["upgrade"]="Clan Hunters",["experience"]=2,["cost"]=0.5,["event"]=""},
    [47]={["unit"]="Clan Spearmen",["upgrade"]="Clan Axemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [48]={["unit"]="Claw-Guard",["upgrade"]="Loke-Rim Cavalry",["experience"]=9,["cost"]=2,["event"]=""},
    [49]={["unit"]="Dale Swordmasters",["upgrade"]="Dalian Paladins",["experience"]=7,["cost"]=1,["event"]=""},
    [50]={["unit"]="Dalian Billmen",["upgrade"]="Dalian Longbowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [51]={["unit"]="Dalian Billmen",["upgrade"]="Dalian Swordsmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [52]={["unit"]="Dalian Billmen",["upgrade"]="Lake-town Pikemen",["experience"]=7,["cost"]=1,["event"]=""},
    [53]={["unit"]="Dalian Longbowmen",["upgrade"]="Dalian Billmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [54]={["unit"]="Dalian Longbowmen",["upgrade"]="Dalian Swordsmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [55]={["unit"]="Dalian Longbowmen",["upgrade"]="Barding Marksmen",["experience"]=7,["cost"]=1,["event"]=""},
    [56]={["unit"]="Dalian Swordsmen",["upgrade"]="Dalian Longbowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [57]={["unit"]="Dalian Swordsmen",["upgrade"]="Dalian Billmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [58]={["unit"]="Dalian Swordsmen",["upgrade"]="Dale Swordmasters",["experience"]=7,["cost"]=1,["event"]=""},
    [59]={["unit"]="Dol Guldur Archers",["upgrade"]="Mirkwood Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [60]={["unit"]="Dol Guldur Archers",["upgrade"]="Dol Guldur Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [61]={["unit"]="Dol Guldur Archers",["upgrade"]="Dol Guldur Host",["experience"]=2,["cost"]=0.5,["event"]=""},
    [62]={["unit"]="Dol Guldur Host",["upgrade"]="Dol Guldur Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [63]={["unit"]="Dol Guldur Host",["upgrade"]="Dol Guldur Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [64]={["unit"]="Dol Guldur Host",["upgrade"]="Mirkwood Swords",["experience"]=7,["cost"]=1,["event"]=""},
    [65]={["unit"]="Dol Guldur Scouts",["upgrade"]="Dol Guldur Host",["experience"]=2,["cost"]=0.5,["event"]=""},
    [66]={["unit"]="Dol Guldur Scouts",["upgrade"]="Dol Guldur Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [67]={["unit"]="Dubhshith Foresters",["upgrade"]="Enedwaith Marksmen",["experience"]=7,["cost"]=1,["event"]=""},
    [68]={["unit"]="Dunedain Armsmen",["upgrade"]="Dismounted Fornost-Erain Knights",["experience"]=7,["cost"]=1,["event"]=""},
    [69]={["unit"]="Dunedain Axemen",["upgrade"]="Sons of Numenor",["experience"]=9,["cost"]=3,["event"]=""},
    [70]={["unit"]="Dunedain Rangers",["upgrade"]="Dunedain Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [71]={["unit"]="Dunedain Rangers",["upgrade"]="Dunedain Steelbowmen",["experience"]=9,["cost"]=1,["event"]=""},
    [72]={["unit"]="Dunedain Scouts",["upgrade"]="Fornost-Erain Knights",["experience"]=9,["cost"]=2,["event"]=""},
    [73]={["unit"]="Dunedain Wardens",["upgrade"]="Dunedain Rangers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [74]={["unit"]="Dunedain Wardens",["upgrade"]="Dunedain Armsmen",["experience"]=5,["cost"]=1,["event"]=""},
    [75]={["unit"]="Dunedain Wardens",["upgrade"]="Dunedain Axemen",["experience"]=7,["cost"]=1,["event"]=""},
    [76]={["unit"]="Dwarven Labourers",["upgrade"]="Erebor Infantry",["experience"]=2,["cost"]=1,["event"]=""},
    [77]={["unit"]="Dwarven Labourers",["upgrade"]="Ered Luin Militia",["experience"]=2,["cost"]=1,["event"]=""},
    [78]={["unit"]="Elder Council",["upgrade"]="Elvenkings Bowguard",["experience"]=7,["cost"]=1,["event"]=""},
    [79]={["unit"]="Elder Council",["upgrade"]="Elvenkings Axeguard",["experience"]=7,["cost"]=1,["event"]=""},
    [80]={["unit"]="Elder Council",["upgrade"]="Elvenking's Palace Guard",["experience"]=9,["cost"]=1,["event"]=""},
    [81]={["unit"]="Elven Bow Stagriders",["upgrade"]="Heavy Spear Stagriders",["experience"]=9,["cost"]=1,["event"]=""},
    [82]={["unit"]="Ent Catapult",["upgrade"]="Ents",["experience"]=2,["cost"]=0.5,["event"]=""},
    [83]={["unit"]="Ents",["upgrade"]="Ent Catapult",["experience"]=2,["cost"]=0.5,["event"]=""},
    [84]={["unit"]="Eored Axemen",["upgrade"]="Eored Footmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [85]={["unit"]="Eored Axemen",["upgrade"]="Eored Swordsmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [86]={["unit"]="Eored Footmen",["upgrade"]="Eored Axemen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [87]={["unit"]="Eored Footmen",["upgrade"]="Eored Swordsmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [88]={["unit"]="Eored Footmen",["upgrade"]="Golden Hall Spearmen",["experience"]=7,["cost"]=1,["event"]=""},
    [89]={["unit"]="Eored Swordsmen",["upgrade"]="Eored Axemen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [90]={["unit"]="Eored Swordsmen",["upgrade"]="Eored Footmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [91]={["unit"]="Eored Swordsmen",["upgrade"]="Golden Hall Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [92]={["unit"]="Eorling Archers",["upgrade"]="Eorling Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [93]={["unit"]="Eorling Archers",["upgrade"]="Helmingas",["experience"]=7,["cost"]=1,["event"]=""},
    [94]={["unit"]="Eorling Spearmen",["upgrade"]="Eorling Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [95]={["unit"]="Eorling Spearmen",["upgrade"]="Eored Footmen",["experience"]=5,["cost"]=1,["event"]=""},
    [96]={["unit"]="Eotheod Horsemen",["upgrade"]="Eotheod Archers",["experience"]=9,["cost"]=1,["event"]=""},
    [97]={["unit"]="Eotheod Horsemen",["upgrade"]="Eotheod Cavalry",["experience"]=9,["cost"]=1,["event"]=""},
    [98]={["unit"]="Erebor Axethrowers",["upgrade"]="Erebor Infantry",["experience"]=2,["cost"]=0.5,["event"]=""},
    [99]={["unit"]="Erebor Axethrowers",["upgrade"]="Kings Warriors",["experience"]=7,["cost"]=1,["event"]=""},
    [100]={["unit"]="Erebor Infantry",["upgrade"]="Erebor Axethrowers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [101]={["unit"]="Erebor Infantry",["upgrade"]="Kings Shields",["experience"]=7,["cost"]=1,["event"]=""},
    [102]={["unit"]="Ered Luin Militia",["upgrade"]="Ered Luin Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [103]={["unit"]="Ered Luin Militia",["upgrade"]="Ered Luin Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [104]={["unit"]="Ered Luin Militia",["upgrade"]="Longbeard Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [105]={["unit"]="Ered Luin Pikemen",["upgrade"]="Ered Luin Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [106]={["unit"]="Ered Luin Pikemen",["upgrade"]="Ered Luin Militia",["experience"]=2,["cost"]=0.5,["event"]=""},
    [107]={["unit"]="Ered Luin Pikemen",["upgrade"]="Longbeard Phalanx",["experience"]=7,["cost"]=1,["event"]=""},
    [108]={["unit"]="Ered Luin Scouts",["upgrade"]="Ered Luin Militia",["experience"]=2,["cost"]=0.5,["event"]=""},
    [109]={["unit"]="Ered Luin Scouts",["upgrade"]="Ered Luin Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [110]={["unit"]="Ered Luin Scouts",["upgrade"]="Longbeard Crossbows",["experience"]=7,["cost"]=1,["event"]=""},
    [111]={["unit"]="Faolan Borderguard",["upgrade"]="Faolan Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [112]={["unit"]="Faolan Borderguard",["upgrade"]="Enedwaith Guardsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [113]={["unit"]="Faolan Warriors",["upgrade"]="Faolan Borderguard",["experience"]=2,["cost"]=0.5,["event"]=""},
    [114]={["unit"]="Faolan Warriors",["upgrade"]="Clan Heralds",["experience"]=7,["cost"]=1,["event"]=""},
    [115]={["unit"]="Faolan Warriors",["upgrade"]="Enedwaith Guardsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [116]={["unit"]="Frekkalingir Harriers",["upgrade"]="Frekkalingir Stalwarts",["experience"]=9,["cost"]=1,["event"]=""},
    [117]={["unit"]="Frekkalingir Hill-Riders",["upgrade"]="Frekkalingir Stalwarts",["experience"]=9,["cost"]=1,["event"]=""},
    [118]={["unit"]="Fylani Herders",["upgrade"]="Enedwaith Cavalry",["experience"]=9,["cost"]=1,["event"]=""},
    [119]={["unit"]="Goblin Archers",["upgrade"]="Goblin Infantry",["experience"]=2,["cost"]=0.5,["event"]=""},
    [120]={["unit"]="Goblin Archers",["upgrade"]="Goblin Band",["experience"]=2,["cost"]=0.5,["event"]=""},
    [121]={["unit"]="Goblin Archers",["upgrade"]="Black Pit Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [122]={["unit"]="Goblin Band",["upgrade"]="Goblin Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [123]={["unit"]="Goblin Band",["upgrade"]="Goblin Infantry",["experience"]=2,["cost"]=0.5,["event"]=""},
    [124]={["unit"]="Goblin Band",["upgrade"]="Black Pit Spears",["experience"]=7,["cost"]=1,["event"]=""},
    [125]={["unit"]="Goblin Infantry",["upgrade"]="Goblin Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [126]={["unit"]="Goblin Infantry",["upgrade"]="Goblin Band",["experience"]=2,["cost"]=0.5,["event"]=""},
    [127]={["unit"]="Goblin Infantry",["upgrade"]="Black Pit Infantry",["experience"]=7,["cost"]=1,["event"]=""},
    [128]={["unit"]="Gondor Archer Militia",["upgrade"]="Territorial Guardsmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [129]={["unit"]="Gondor Archer Militia",["upgrade"]="Gondor Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [130]={["unit"]="Gondor Archer Militia",["upgrade"]="Gondor Militia",["experience"]=2,["cost"]=0.5,["event"]=""},
    [131]={["unit"]="Gondor Archers",["upgrade"]="Marksmen of Cair Andros",["experience"]=9,["cost"]=2,["event"]=""},
    [132]={["unit"]="Gondor Cavalry Militia",["upgrade"]="Gondor Cavalry",["experience"]=9,["cost"]=1,["event"]=""},
    [133]={["unit"]="Gondor Infantry",["upgrade"]="Wardens White Tower",["experience"]=9,["cost"]=2,["event"]=""},
    [134]={["unit"]="Gondor Militia",["upgrade"]="Gondor Infantry",["experience"]=7,["cost"]=1,["event"]=""},
    [135]={["unit"]="Gondor Militia",["upgrade"]="Territorial Guardsmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [136]={["unit"]="Gondor Militia",["upgrade"]="Gondor Archer Militia",["experience"]=2,["cost"]=0.5,["event"]=""},
    [137]={["unit"]="Gondor Pikemen",["upgrade"]="Fountain Guard",["experience"]=9,["cost"]=3,["event"]=""},
    [138]={["unit"]="Gondor Spearmen",["upgrade"]="Citadel Guard",["experience"]=7,["cost"]=1,["event"]=""},
    [139]={["unit"]="Greenwood Foresters",["upgrade"]="Greenwood Watchers",["experience"]=5,["cost"]=1,["event"]=""},
    [140]={["unit"]="Greenwood Watchers",["upgrade"]="Greenwood Foresters",["experience"]=5,["cost"]=1,["event"]=""},
    [141]={["unit"]="Gurdhinen",["upgrade"]="Galadhrim Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [142]={["unit"]="Haradrim Archers",["upgrade"]="Haradrim Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [143]={["unit"]="Haradrim Spearmen",["upgrade"]="Haradrim Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [144]={["unit"]="Haradrim Spearmen",["upgrade"]="Serpent Bladesmen",["experience"]=9,["cost"]=1,["event"]=""},
    [145]={["unit"]="Heavy Goblin Warg-riders",["upgrade"]="Azogs Defilers",["experience"]=9,["cost"]=2,["event"]=""},
    [146]={["unit"]="Hitherbin",["upgrade"]="Galadhrim Cavalry",["experience"]=7,["cost"]=1,["event"]=""},
    [147]={["unit"]="Iron Crown Halberdiers",["upgrade"]="Northguard",["experience"]=9,["cost"]=1,["event"]=""},
    [148]={["unit"]="Iron Crown Longbowmen",["upgrade"]="Darkblades",["experience"]=9,["cost"]=1,["event"]=""},
    [149]={["unit"]="Iron Guard",["upgrade"]="Legionaries of Erebor",["experience"]=9,["cost"]=3,["event"]=""},
    [150]={["unit"]="Iron Hills Mattocks",["upgrade"]="Kings Axes",["experience"]=7,["cost"]=1,["event"]=""},
    [151]={["unit"]="Keefei Huntsmen",["upgrade"]="Enedwaith Marksmen",["experience"]=7,["cost"]=1,["event"]=""},
    [152]={["unit"]="Khand Elite Horse Archers",["upgrade"]="Warlords Kataphract Archers",["experience"]=9,["cost"]=2,["event"]=""},
    [153]={["unit"]="Khazad Sentries",["upgrade"]="Khazad Volunteers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [154]={["unit"]="Khazad Sentries",["upgrade"]="Legion Shieldguard",["experience"]=7,["cost"]=1,["event"]=""},
    [155]={["unit"]="Khazad Volunteers",["upgrade"]="Khazad Sentries",["experience"]=2,["cost"]=0.5,["event"]=""},
    [156]={["unit"]="Khazad Volunteers",["upgrade"]="Legion Deeping Guard",["experience"]=7,["cost"]=1,["event"]=""},
    [157]={["unit"]="Kings Shields",["upgrade"]="Iron Guard",["experience"]=9,["cost"]=2,["event"]=""},
    [158]={["unit"]="Kings Warriors",["upgrade"]="Axeguard of Erebor",["experience"]=9,["cost"]=2,["event"]=""},
    [159]={["unit"]="Lake-town Pikemen",["upgrade"]="Barding Hird",["experience"]=7,["cost"]=1,["event"]=""},
    [160]={["unit"]="Legion Crossbows",["upgrade"]="Blacklock Engineers",["experience"]=9,["cost"]=1,["event"]=""},
    [161]={["unit"]="Legion Deeping Guard",["upgrade"]="Dragonslayers",["experience"]=9,["cost"]=5,["event"]=""},
    [162]={["unit"]="Liadan Billmen",["upgrade"]="Enedwaith Guardsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [163]={["unit"]="Liadan Spearmen",["upgrade"]="Enedwaith Guardsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [164]={["unit"]="Lindar Bowmen",["upgrade"]="Heavy Falathrim Archers",["experience"]=9,["cost"]=1,["event"]=""},
    [165]={["unit"]="Lindar Bowmen",["upgrade"]="Lindon Longspears",["experience"]=2,["cost"]=0.5,["event"]=""},
    [166]={["unit"]="Lindar Bowmen",["upgrade"]="Lindar Mariners",["experience"]=4,["cost"]=0.5,["event"]=""},
    [167]={["unit"]="Lindar Bowmen",["upgrade"]="Lindar Guards",["experience"]=2,["cost"]=0.5,["event"]=""},
    [168]={["unit"]="Lindar Guards",["upgrade"]="Lindar Mariners",["experience"]=4,["cost"]=0.5,["event"]=""},
    [169]={["unit"]="Lindar Guards",["upgrade"]="Lindar Bowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [170]={["unit"]="Lindar Guards",["upgrade"]="Lindon Longspears",["experience"]=2,["cost"]=0.5,["event"]=""},
    [171]={["unit"]="Lindar Mariners",["upgrade"]="Heavy Falathrim Shipwrights",["experience"]=7,["cost"]=1,["event"]=""},
    [172]={["unit"]="Lindar Mariners",["upgrade"]="Lindar Bowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [173]={["unit"]="Lindar Mariners",["upgrade"]="Lindon Longspears",["experience"]=2,["cost"]=0.5,["event"]=""},
    [174]={["unit"]="Lindar Mariners",["upgrade"]="Lindar Guards",["experience"]=2,["cost"]=0.5,["event"]=""},
    [175]={["unit"]="Lindon Longspears",["upgrade"]="Heavy Falathrim Spears",["experience"]=9,["cost"]=1,["event"]=""},
    [176]={["unit"]="Lindon Longspears",["upgrade"]="Lindar Mariners",["experience"]=4,["cost"]=0.5,["event"]=""},
    [177]={["unit"]="Lindon Longspears",["upgrade"]="Lindar Bowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [178]={["unit"]="Lindon Longspears",["upgrade"]="Lindar Guards",["experience"]=2,["cost"]=0.5,["event"]=""},
    [179]={["unit"]="Loke-Innas Rim",["upgrade"]="Dragon-Wrath Kataphracts",["experience"]=9,["cost"]=2,["event"]="balchoth_clan_joins"},
    [180]={["unit"]="Loke-Rim Archers",["upgrade"]="Loke-Nar Rim",["experience"]=7,["cost"]=1,["event"]=""},
    [181]={["unit"]="Loke-Rim Cavalry",["upgrade"]="Loke-Innas Rim",["experience"]=9,["cost"]=2,["event"]=""},
    [182]={["unit"]="Loke-Rim Pikemen",["upgrade"]="Dragons Wrath Guardians",["experience"]=9,["cost"]=2,["event"]="balchoth_clan_joins"},
    [183]={["unit"]="Loke-Rim Swordsmen",["upgrade"]="Dragon-Wrath Shields",["experience"]=9,["cost"]=2,["event"]="balchoth_clan_joins"},
    [184]={["unit"]="Longbeard Phalanx",["upgrade"]="Beleriand Honour Guard",["experience"]=9,["cost"]=5,["event"]="buzra_balrog"},
    [185]={["unit"]="Longbeard Swordsmen",["upgrade"]="Gabilgathol Guard",["experience"]=9,["cost"]=2,["event"]=""},
    [186]={["unit"]="Lorien Archers",["upgrade"]="Lothlorien Marchwardens",["experience"]=7,["cost"]=1,["event"]=""},
    [187]={["unit"]="Lorien Archers",["upgrade"]="Lorien Warders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [188]={["unit"]="Lorien Archers",["upgrade"]="Lorien Sentries",["experience"]=2,["cost"]=0.5,["event"]=""},
    [189]={["unit"]="Lorien Scouts",["upgrade"]="Hitherbin",["experience"]=9,["cost"]=1,["event"]=""},
    [190]={["unit"]="Lorien Sentries",["upgrade"]="Sentinels of Cerin Amroth",["experience"]=7,["cost"]=1,["event"]=""},
    [191]={["unit"]="Lorien Sentries",["upgrade"]="Lorien Warders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [192]={["unit"]="Lorien Sentries",["upgrade"]="Lorien Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [193]={["unit"]="Lorien Warders",["upgrade"]="Lorien Sentries",["experience"]=2,["cost"]=0.5,["event"]=""},
    [194]={["unit"]="Lorien Warders",["upgrade"]="Lorien Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [195]={["unit"]="Lorien Warders",["upgrade"]="Sentinels of Cerin Amroth",["experience"]=7,["cost"]=1,["event"]=""},
    [196]={["unit"]="Lothlorien Marchwardens",["upgrade"]="Galadhrim Archers",["experience"]=5,["cost"]=0.5,["event"]=""},
    [197]={["unit"]="Lumbermen",["upgrade"]="Woodland Hunters",["experience"]=2,["cost"]=0.5,["event"]=""},
    [198]={["unit"]="Lumbermen",["upgrade"]="Sworn Defenders",["experience"]=5,["cost"]=1,["event"]="nd_choose_arnor"},
    [199]={["unit"]="Maethyr i-Thewair",["upgrade"]="Elvenkings Axeguard",["experience"]=7,["cost"]=1,["event"]=""},
    [200]={["unit"]="Mirkwood Archers",["upgrade"]="Guldur Archers",["experience"]=9,["cost"]=1,["event"]=""},
    [201]={["unit"]="Mirkwood Goblins",["upgrade"]="Mirkwood Hunters",["experience"]=2,["cost"]=0.5,["event"]=""},
    [202]={["unit"]="Mirkwood Goblins",["upgrade"]="Goblin Stalkers",["experience"]=7,["cost"]=1,["event"]=""},
    [203]={["unit"]="Mirkwood Hunters",["upgrade"]="Mirkwood Goblins",["experience"]=2,["cost"]=0.5,["event"]=""},
    [204]={["unit"]="Mirkwood Hunters",["upgrade"]="Goblin Headhunters",["experience"]=7,["cost"]=1,["event"]=""},
    [205]={["unit"]="Mirkwood Spears",["upgrade"]="Guldur Spears",["experience"]=9,["cost"]=1,["event"]=""},
    [206]={["unit"]="Mirkwood Swords",["upgrade"]="Guldur Heavy Swords",["experience"]=9,["cost"]=1,["event"]=""},
    [207]={["unit"]="Mochaini Touta",["upgrade"]="Mochaini Ambaxtoi",["experience"]=7,["cost"]=1,["event"]=""},
    [208]={["unit"]="Mordag Fishermen",["upgrade"]="Mordag Skirmishers",["experience"]=2,["cost"]=1,["event"]=""},
    [209]={["unit"]="Mordor Catapult",["upgrade"]="Trolls",["experience"]=2,["cost"]=0.5,["event"]=""},
    [210]={["unit"]="Mountain-Orc Hunters",["upgrade"]="Mountain Uruks",["experience"]=9,["cost"]=2,["event"]=""},
    [211]={["unit"]="Mounted Quendi",["upgrade"]="Amanyar Riders",["experience"]=9,["cost"]=1,["event"]=""},
    [212]={["unit"]="Mounted Quendi",["upgrade"]="Amanyar Rangers",["experience"]=9,["cost"]=1,["event"]=""},
    [213]={["unit"]="Nomad Axemen",["upgrade"]="Nomad Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [214]={["unit"]="Nomad Horsemen",["upgrade"]="Variag Horse Archers",["experience"]=9,["cost"]=1,["event"]=""},
    [215]={["unit"]="Nomad Warriors",["upgrade"]="Nomad Axemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [216]={["unit"]="Nomad Warriors",["upgrade"]="Variag Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [217]={["unit"]="Northmen Militia",["upgrade"]="Dalian Swordsmen",["experience"]=5,["cost"]=1,["event"]=""},
    [218]={["unit"]="Numenorean Cohort",["upgrade"]="Royal Legion of Armenelos",["experience"]=9,["cost"]=2,["event"]=""},
    [219]={["unit"]="Numenorean Marksmen",["upgrade"]="Naru n'Aru Sentinels",["experience"]=7,["cost"]=1,["event"]=""},
    [220]={["unit"]="Numenorean Shieldguard",["upgrade"]="Naru n'Aru Royal Guard",["experience"]=7,["cost"]=1,["event"]=""},
    [221]={["unit"]="Orc Host",["upgrade"]="Morannon Guard",["experience"]=9,["cost"]=2,["event"]=""},
    [222]={["unit"]="Orc Maulers",["upgrade"]="Mirkwood Slayers",["experience"]=nil,["cost"]=nil,["event"]=""},
    [223]={["unit"]="Orc Raiders",["upgrade"]="Orc Host",["experience"]=2,["cost"]=0.5,["event"]=""},
    [224]={["unit"]="Orc Scouts",["upgrade"]="Orc Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [225]={["unit"]="Rhudaur Pikemen",["upgrade"]="Rhudaur Savages",["experience"]=2,["cost"]=0.5,["event"]=""},
    [226]={["unit"]="Rhudaur Savages",["upgrade"]="Rhudaur Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [227]={["unit"]="Rhudaur Savages",["upgrade"]="Rhudaur Huscarles",["experience"]=nil,["cost"]=nil,["event"]=""},
    [228]={["unit"]="Rhunnic Bowmen",["upgrade"]="Loke-Rim Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [229]={["unit"]="Rhunnic Bowmen",["upgrade"]="Rhunnic Spears",["experience"]=2,["cost"]=0.5,["event"]=""},
    [230]={["unit"]="Rhunnic Bowmen",["upgrade"]="Rhunnic Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [231]={["unit"]="Rhunnic Spears",["upgrade"]="Loke-Rim Spearmen",["experience"]=7,["cost"]=1,["event"]=""},
    [232]={["unit"]="Rhunnic Spears",["upgrade"]="Rhunnic Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [233]={["unit"]="Rhunnic Spears",["upgrade"]="Rhunnic Bowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [234]={["unit"]="Rhunnic Warriors",["upgrade"]="Loke-Rim Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [235]={["unit"]="Rhunnic Warriors",["upgrade"]="Rhunnic Spears",["experience"]=2,["cost"]=0.5,["event"]=""},
    [236]={["unit"]="Rhunnic Warriors",["upgrade"]="Rhunnic Bowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [237]={["unit"]="Rohirrim",["upgrade"]="Rohirrim Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [238]={["unit"]="Rohirrim",["upgrade"]="Riddermark Cavalry",["experience"]=5,["cost"]=1,["event"]=""},
    [239]={["unit"]="Rohirrim",["upgrade"]="Eored Lancers",["experience"]=5,["cost"]=1,["event"]=""},
    [240]={["unit"]="Rohirrim Archers",["upgrade"]="Rohirrim",["experience"]=2,["cost"]=0.5,["event"]=""},
    [241]={["unit"]="Rohirrim Archers",["upgrade"]="Eored Skirmishers",["experience"]=5,["cost"]=1,["event"]=""},
    [242]={["unit"]="Rohirrim Archers",["upgrade"]="Riders of the Fold",["experience"]=7,["cost"]=1,["event"]=""},
    [243]={["unit"]="Sentinels of Cerin Amroth",["upgrade"]="Galadhrim Swordsmen",["experience"]=7,["cost"]=1,["event"]=""},
    [244]={["unit"]="Sindar Archers",["upgrade"]="Heavy Falathrim Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [245]={["unit"]="Sindar Axemen",["upgrade"]="Heavy Falathrim Wavebreakers",["experience"]=7,["cost"]=1,["event"]=""},
    [246]={["unit"]="Sindar Riders",["upgrade"]="Heavy Falathrim Skirmishers",["experience"]=9,["cost"]=1,["event"]=""},
    [247]={["unit"]="Sindar Spearmen",["upgrade"]="Heavy Falathrim Spears",["experience"]=7,["cost"]=1,["event"]=""},
    [248]={["unit"]="Snaga Archers",["upgrade"]="Snaga Stalkers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [249]={["unit"]="Snaga Archers",["upgrade"]="Snaga Skirmishers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [250]={["unit"]="Snaga Archers",["upgrade"]="Goblin Archers",["experience"]=5,["cost"]=0.5,["event"]=""},
    [251]={["unit"]="Snaga Skirmishers",["upgrade"]="Snaga Stalkers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [252]={["unit"]="Snaga Skirmishers",["upgrade"]="Goblin Archers",["experience"]=5,["cost"]=0.5,["event"]=""},
    [253]={["unit"]="Snaga Skirmishers",["upgrade"]="Snaga Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [254]={["unit"]="Snaga Stalkers",["upgrade"]="Goblin Band",["experience"]=5,["cost"]=0.5,["event"]=""},
    [255]={["unit"]="Snaga Stalkers",["upgrade"]="Snaga Skirmishers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [256]={["unit"]="Snaga Stalkers",["upgrade"]="Snaga Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [257]={["unit"]="Snow-Orc Raiders",["upgrade"]="Blackshield Warriors",["experience"]=7,["cost"]=1,["event"]=""},
    [258]={["unit"]="Snow-Orc Raiders",["upgrade"]="Snow-Orc Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [259]={["unit"]="Snow-Orc Raiders",["upgrade"]="Snow-Orc Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [260]={["unit"]="Snow-Orc Scouts",["upgrade"]="Snow-Orc Raiders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [261]={["unit"]="Snow-Orc Scouts",["upgrade"]="Snow-Orc Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [262]={["unit"]="Snow-Orc Scouts",["upgrade"]="Blackshield Archers",["experience"]=7,["cost"]=1,["event"]=""},
    [263]={["unit"]="Snow-Orc Spearmen",["upgrade"]="Snow-Orc Raiders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [264]={["unit"]="Snow-Orc Spearmen",["upgrade"]="Blackshield Warband",["experience"]=7,["cost"]=1,["event"]=""},
    [265]={["unit"]="Snow-Orc Spearmen",["upgrade"]="Snow-Orc Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [266]={["unit"]="Southron Archers",["upgrade"]="Southron Warband",["experience"]=2,["cost"]=0.5,["event"]=""},
    [267]={["unit"]="Southron Archers",["upgrade"]="Southron Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [268]={["unit"]="Southron Pikemen",["upgrade"]="Southron Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [269]={["unit"]="Southron Pikemen",["upgrade"]="Southron Warband",["experience"]=2,["cost"]=0.5,["event"]=""},
    [270]={["unit"]="Southron Warband",["upgrade"]="Serpent Bladesmen",["experience"]=7,["cost"]=1,["event"]=""},
    [271]={["unit"]="Southron Warband",["upgrade"]="Southron Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [272]={["unit"]="Southron Warband",["upgrade"]="Southron Pikemen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [273]={["unit"]="Spear Quendi",["upgrade"]="Bow Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [274]={["unit"]="Spear Quendi",["upgrade"]="Spear Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [275]={["unit"]="Spear Quendi",["upgrade"]="Amanyar Pikes",["experience"]=7,["cost"]=1,["event"]=""},
    [276]={["unit"]="Sword Quendi",["upgrade"]="Bow Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [277]={["unit"]="Sword Quendi",["upgrade"]="Spear Quendi",["experience"]=2,["cost"]=0.5,["event"]=""},
    [278]={["unit"]="Sword Quendi",["upgrade"]="Amanyar Swordmasters",["experience"]=7,["cost"]=1,["event"]=""},
    [279]={["unit"]="Sworn Horsemen",["upgrade"]="Fornost-Erain Knights",["experience"]=9,["cost"]=2,["event"]=""},
    [280]={["unit"]="Temple Knights",["upgrade"]="Melkor's Chosen",["experience"]=9,["cost"]=2,["event"]=""},
    [281]={["unit"]="Temple Wards",["upgrade"]="Barad-dur Wardens",["experience"]=9,["cost"]=2,["event"]=""},
    [282]={["unit"]="Territorial Guardsmen",["upgrade"]="Gondor Spearmen",["experience"]=7,["cost"]=1,["event"]=""},
    [283]={["unit"]="Territorial Guardsmen",["upgrade"]="Gondor Militia",["experience"]=2,["cost"]=0.5,["event"]=""},
    [284]={["unit"]="Territorial Guardsmen",["upgrade"]="Gondor Archer Militia",["experience"]=2,["cost"]=0.5,["event"]=""},
    [285]={["unit"]="Thorn Bladesmen",["upgrade"]="Regent Axeguard",["experience"]=7,["cost"]=1,["event"]=""},
    [286]={["unit"]="Thorn Bladesmen",["upgrade"]="Thorn Guard",["experience"]=2,["cost"]=0.5,["event"]=""},
    [287]={["unit"]="Thorn Bladesmen",["upgrade"]="Thorn Crossbowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [288]={["unit"]="Thorn Crossbowmen",["upgrade"]="Thorn Bladesmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [289]={["unit"]="Thorn Crossbowmen",["upgrade"]="Thorn Guard",["experience"]=2,["cost"]=0.5,["event"]=""},
    [290]={["unit"]="Thorn Crossbowmen",["upgrade"]="Regent Bowguard",["experience"]=7,["cost"]=1,["event"]=""},
    [291]={["unit"]="Thorn Guard",["upgrade"]="Thorn Bladesmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [292]={["unit"]="Thorn Guard",["upgrade"]="Regent Spearguard",["experience"]=7,["cost"]=1,["event"]=""},
    [293]={["unit"]="Thorn Guard",["upgrade"]="Thorn Crossbowmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [294]={["unit"]="Thralls",["upgrade"]="Angmarim Infantry",["experience"]=5,["cost"]=0.5,["event"]=""},
    [295]={["unit"]="Troll-men Hunters",["upgrade"]="Troll-men Champions",["experience"]=9,["cost"]=2,["event"]=""},
    [296]={["unit"]="Troll-men Warriors",["upgrade"]="Troll-men Champions",["experience"]=9,["cost"]=2,["event"]=""},
    [297]={["unit"]="Trolls",["upgrade"]="Mordor Catapult",["experience"]=2,["cost"]=0.5,["event"]=""},
    [298]={["unit"]="Uruk-hai Archers",["upgrade"]="Uruk-hai Raiders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [299]={["unit"]="Uruk-hai Archers",["upgrade"]="Uruk-hai Crossbow",["experience"]=7,["cost"]=1,["event"]=""},
    [300]={["unit"]="Uruk-hai Crossbow",["upgrade"]="Guard of the Hand",["experience"]=9,["cost"]=3,["event"]=""},
    [301]={["unit"]="Uruk-hai Raiders",["upgrade"]="Uruk-hai Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [302]={["unit"]="Uruk-hai Raiders",["upgrade"]="Uruk-hai Infantry",["experience"]=7,["cost"]=1,["event"]=""},
    [303]={["unit"]="Vale Archers",["upgrade"]="Woodman Trackers",["experience"]=nil,["cost"]=nil,["event"]=""},
    [304]={["unit"]="Variag Bowmen",["upgrade"]="Variag Swordsmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [305]={["unit"]="Variag Horse Archers",["upgrade"]="Khand Elite Horse Archers",["experience"]=9,["cost"]=2,["event"]=""},
    [306]={["unit"]="Variag Swordsmen",["upgrade"]="Variag Bowmen",["experience"]=5,["cost"]=0.5,["event"]=""},
    [307]={["unit"]="Variag Swordsmen",["upgrade"]="Khand Elite Swordsmen",["experience"]=nil,["cost"]=nil,["event"]=""},
    [308]={["unit"]="Warband Blades",["upgrade"]="Wulfguard Axemen",["experience"]=7,["cost"]=1,["event"]=""},
    [309]={["unit"]="Warband Host",["upgrade"]="Wulfguard Pikes",["experience"]=7,["cost"]=1,["event"]=""},
    [310]={["unit"]="Warg Marauders",["upgrade"]="Mirkwood Warg-Riders",["experience"]=9,["cost"]=1,["event"]=""},
    [311]={["unit"]="Warg Marauders",["upgrade"]="Blackshield Warg Riders",["experience"]=9,["cost"]=2,["event"]=""},
    [312]={["unit"]="Warg Riders",["upgrade"]="Heavy Goblin Warg-riders",["experience"]=9,["cost"]=2,["event"]=""},
    [313]={["unit"]="Watch Shirriffs",["upgrade"]="Bandobras Archers",["experience"]=2,["cost"]=0.5,["event"]=""},
    [314]={["unit"]="Woodland Hunters",["upgrade"]="Lumbermen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [315]={["unit"]="Woodland Hunters",["upgrade"]="Sworn Archers",["experience"]=5,["cost"]=1,["event"]="nd_choose_arnor"},
    [316]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [317]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [318]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [319]={["unit"]="Woodland Scouts",["upgrade"]="Woodland Sentinels",["experience"]=7,["cost"]=1,["event"]=""},
    [320]={["unit"]="Woodland Sentinels",["upgrade"]="Elvenkings Bowguard",["experience"]=7,["cost"]=1,["event"]=""},
    [321]={["unit"]="Woodland Spearmen",["upgrade"]="Woodland Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [322]={["unit"]="Woodland Spearmen",["upgrade"]="Woodland Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [323]={["unit"]="Woodland Spearmen",["upgrade"]="Woodland Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [324]={["unit"]="Woodland Spearmen",["upgrade"]="Elvenking's Spearguard",["experience"]=9,["cost"]=1,["event"]=""},
    [325]={["unit"]="Woodland Wardens",["upgrade"]="Woodland Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [326]={["unit"]="Woodland Wardens",["upgrade"]="Woodland Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [327]={["unit"]="Woodland Wardens",["upgrade"]="Woodland Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [328]={["unit"]="Woodland Wardens",["upgrade"]="Elvenkings Axeguard",["experience"]=9,["cost"]=1,["event"]=""},
    [329]={["unit"]="Woodland Warriors",["upgrade"]="Woodland Scouts",["experience"]=2,["cost"]=0.5,["event"]=""},
    [330]={["unit"]="Woodland Warriors",["upgrade"]="Woodland Spearmen",["experience"]=2,["cost"]=0.5,["event"]=""},
    [331]={["unit"]="Woodland Warriors",["upgrade"]="Woodland Wardens",["experience"]=2,["cost"]=0.5,["event"]=""},
    [332]={["unit"]="Woodland Warriors",["upgrade"]="Maethyr i-Thewair",["experience"]=7,["cost"]=1,["event"]=""},
    [333]={["unit"]="Woodman Defenders",["upgrade"]="Woodman Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [334]={["unit"]="Woodman Defenders",["upgrade"]="Woodman Hunters",["experience"]=2,["cost"]=0.5,["event"]=""},
    [335]={["unit"]="Woodman Defenders",["upgrade"]="Beorning Spearmen",["experience"]=7,["cost"]=1,["event"]=""},
    [336]={["unit"]="Woodman Hunters",["upgrade"]="Woodman Defenders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [337]={["unit"]="Woodman Hunters",["upgrade"]="Woodman Warriors",["experience"]=2,["cost"]=0.5,["event"]=""},
    [338]={["unit"]="Woodman Hunters",["upgrade"]="Woodman Trackers",["experience"]=7,["cost"]=nil,["event"]=""},
    [339]={["unit"]="Woodman Warriors",["upgrade"]="Woodman Defenders",["experience"]=2,["cost"]=0.5,["event"]=""},
    [340]={["unit"]="Woodman Warriors",["upgrade"]="Woodman Hunters",["experience"]=2,["cost"]=0.5,["event"]=""},
    [341]={["unit"]="Woodman Warriors",["upgrade"]="Beorning Defenders",["experience"]=7,["cost"]=1,["event"]=""}
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
                        if eduEntry:hasOwnership(faction_id) then
                            owner_check = (owner_check+1)
                        end
                    end
                    if owner_check == 0 then show_upgrade_window = false return end
                    ImGui.SetNextWindowPos(70*eurbackgroundWindowSizeRight, 50*eurbackgroundWindowSizeBottom)
                    ImGui.SetNextWindowBgAlpha(0.0)
                    ImGui.Begin("Upgrades", true, bit.bor(ImGuiWindowFlags.NoDecoration,ImGuiWindowFlags.NoBackground))
                    ImGui.PushStyleVar(ImGuiStyleVar.WindowPadding, 0.1, 0.1)
                    ImGui.PushStyleColor(ImGuiCol.Button, 1, 1, 1, 0.1)
                    ImGui.PushStyleColor(ImGuiCol.ButtonHovered, 1, 1, 1, 0.5)
                    ImGui.PushStyleColor(ImGuiCol.ButtonActive, 1, 1, 1, 0.5)
                    ImGui.PushStyleColor(ImGuiCol.Border, 0, 0, 0, 0)
                    size_x, size_y = ImGui.GetWindowSize()
                    if not UNIT_UPGRADES[unit.eduEntry.eduType] then
                        --
                    else
                        if icon_unit then
                            if ImGui.ImageButton("upgrades_button_1",icon_unit.img ,50,50) then
                                if show_upgrade_window == false then
                                    show_upgrade_window = true
                                else
                                    show_upgrade_window = false
                                end
                            end
                        else
                            if (ImGui.Button("Upgrades", 80, 20)) then
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
    end
    ImGui.EndChild()
    ImGui.PopStyleVar()
    ImGui.PopStyleColor(5)
    ImGui.End()
end

function upgradeWindow()
    show_accept_button = false
    upgrade_message = ""
    unit_cost = 0
    local UI_MANAGER = gameDataAll.get().uiCardManager
    local faction_id = M2TWEOP.getLocalFactionID()
    scroll_unit = UI_MANAGER.getUnitInfoScroll()
    if not scroll_unit then return end
    if scroll_unit.unit ~= nil then
        unit = scroll_unit.unit
        if unit ~= temp_upgrade_unit then
            temp_unit_choice = 1
        end
        if unit.army ~= nil then
            if unit.army.faction.factionID ~= faction_id then 
                show_upgrade_window = false
            return end
            if unit.army:findInFort() or unit.army:findInSettlement() then
                ImGui.SetNextWindowPos(1215*eurbackgroundWindowSizeRight, 10*eurbackgroundWindowSizeBottom)
                ImGui.SetNextWindowBgAlpha(0)
                ImGui.SetNextWindowSize(700*eurbackgroundWindowSizeRight, 500*eurbackgroundWindowSizeBottom)
                ImGui.Begin("Upgrades2", true, bit.bor(ImGuiWindowFlags.NoDecoration))
                eurStyle("basic_1", true)
                if bg_small_1 then
                    ImGui.Image(bg_small_1.img, 695*eurbackgroundWindowSizeRight, 490*eurbackgroundWindowSizeBottom)
                end
                ImGui.SetNextWindowBgAlpha(0.5)
                ImGui.SetNextWindowPos(1215*eurbackgroundWindowSizeRight, 70*eurbackgroundWindowSizeBottom)
                if not UNIT_UPGRADES[unit.eduEntry.eduType] then return end
                ImGui.BeginChild("Child Window##A12", 700*eurbackgroundWindowSizeRight, 380*eurbackgroundWindowSizeBottom, ImGuiChildFlags.FrameStyle)
                ImGui.NewLine()
                ImGui.Separator()
                ImGui.Text("The following units are available to upgrade:")
                for j = 1, #UNIT_UPGRADES[unit.eduEntry.eduType].unit do
                    local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[j])
                    if eduEntry:hasOwnership(faction_id) then
                        local check_counter = checkCounter(UNIT_UPGRADES[unit.eduEntry.eduType].counter[j])
                        if check_counter == true then
                            ImGui.Text(
                                "- " ..
                                    UNIT_UPGRADES[unit.eduEntry.eduType].unit[j] ..
                                        ", " .. "Gold: " .. tostring(math.ceil((eduEntry.recruitCost * UNIT_UPGRADES[unit.eduEntry.eduType].cost_multi[j]))) .. ", Rank: ")
                            ImGui.SameLine()
                            if unit.exp >= (UNIT_UPGRADES[unit.eduEntry.eduType].expRequirement[j]-unit_upgrades_multi) then
                                ImGui.TextColored(0,1,0,1,tostring(UNIT_UPGRADES[unit.eduEntry.eduType].expRequirement[j]-unit_upgrades_multi))
                            else
                                ImGui.TextColored(1,0,0,1,tostring(UNIT_UPGRADES[unit.eduEntry.eduType].expRequirement[j]-unit_upgrades_multi))
                            end
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
                        if eduEntry:hasOwnership(faction_id) then
                            local check_counter = checkCounter(UNIT_UPGRADES[unit.eduEntry.eduType].counter[i])
                            if check_counter == true then
                                local unit_tga = eduEntry.unitCardTga
                                unit_cost =
                                    math.ceil((eduEntry.recruitCost * UNIT_UPGRADES[unit.eduEntry.eduType].cost_multi[i]))
                                    if unit.army.faction.money >= unit_cost then
                                    -----local unitSize = getUnitSizeMult()
                                    local exp_req = (UNIT_UPGRADES[unit.eduEntry.eduType].expRequirement[i]-unit_upgrades_multi)
                                    if unit.exp >= exp_req then
                                        show_accept_button = true
                                        if eur_tga_table[unit_tga] then
                                            local upgrade_clicked = ImGui.ImageButton("upgrade_button_0"..tostring(i),eur_tga_table[unit_tga].img, img_x, img_y)
                                            if (upgrade_clicked == true) then
                                                temp_unit_choice=i
                                            end
                                            local hovered = ImGui.IsItemHovered()
                                            if hovered then
                                                ImGui.BeginTooltip()
                                                ImGui.Text(eduEntry.eduType)
                                                ImGui.EndTooltip()
                                            end
                                        else
                                            local upgrade_clicked = ImGui.Button(upgrade_message)
                                            if (upgrade_clicked == true) then
                                                temp_unit_choice=i
                                            end
                                        end
                                        ImGui.SameLine()
                                    end
                                end
                            end
                        end
                    end
                end
                ImGui.NewLine()
                if show_accept_button then
                    local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[temp_unit_choice])
                    unit_cost = math.ceil((eduEntry.recruitCost * UNIT_UPGRADES[unit.eduEntry.eduType].cost_multi[temp_unit_choice]))
                    ImGui.Text("Upgrade to " .. UNIT_UPGRADES[unit.eduEntry.eduType].unit[temp_unit_choice] .. " for " .. tostring(unit_cost) .. " gold.")
                else
                    ImGui.TextColored(1,0,0,1,"Minimum requirements for upgrade not met.")
                end
            end
        end
        temp_upgrade_unit = unit
    end
    ImGui.EndChild()
    if show_accept_button then
        local eduEntry = M2TWEOPDU.getEduEntryByType(UNIT_UPGRADES[unit.eduEntry.eduType].unit[temp_unit_choice])
        unit_cost = math.ceil((eduEntry.recruitCost * UNIT_UPGRADES[unit.eduEntry.eduType].cost_multi[temp_unit_choice]))
        if (centeredImageButton("Accept", 80, 50, -40)) then
            show_upgrade_window = false
            local upgradeName = UNIT_UPGRADES[unit.eduEntry.eduType].unit[temp_unit_choice]
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
                    old_unit_edu .. " " .. (UNIT_UPGRADES[old_unit_edu].expRequirement[temp_unit_choice]-unit_upgrades_multi)
            )
            local upgradeUnit =
                old_unit_army:createUnit(
                upgradeName,
                (old_unit_exp - (UNIT_UPGRADES[old_unit_edu].expRequirement[temp_unit_choice]-unit_upgrades_multi)),
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
            if EOP_WAVS["uicah_menuclick1"] ~= nil then
                M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
            end
        end
        ImGui.SameLine()
    end
    if (centeredImageButton("Close", 80, 50, 40)) then
        show_upgrade_window = false
        if EOP_WAVS["uicah_menuclick1"] ~= nil then
            M2TWEOPSounds.playEOPSound(EOP_WAVS["uicah_menuclick1"])
        end
    end
    eurStyle("basic_1", false)
    ImGui.End()
end
