local eur_EOP_units = {}

function eur_EOP_units.populateEDU()
    modPath=M2TWEOP.getModPath();
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/elven_ship.txt",1001)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/warg_avengers.txt",1002)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/troll_avengers.txt",1003)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/beleriand_honour_guard.txt",1004)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/trolls_of_the_white_hand.txt",1005)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/champions_of_the_white_hand.txt",1006)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/heavy_spear_stagriders.txt",1007)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/isengard_ballista.txt",1008)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/adunaim_shadowbows.txt",1009)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/melkors_executioners.txt",1010)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/melkors_marksmen.txt",1011)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/fountain_shields.txt",1012)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/Talon_Knights.txt",1013)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/mirkwood_trolls.txt",1014)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/cave_trolls.txt",1015)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/mirkwood_swords.txt",1016)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/angmar_shadowmaces.txt",1017)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/angmar_shadowguards.txt",1018)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/angmar_shadowswords.txt",1019)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/blackshield_wargs.txt",1020)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/uruk_hai_wargs.txt",1021)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/heavy_goblin_wargs.txt",1022)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/black_uruk_wargs.txt",1023)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/mirkwood_wargs.txt",1024)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/Dwarven_Travellers.txt",1025)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/Dwarven_Labourers.txt",1026)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/guldur_uruk_spears.txt",1027)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/guldur_uruk_archers.txt",1028)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/guldur_uruk_swords.txt",1029)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/armoured_half_trolls.txt",1031)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/pale_uruk_glaives.txt",1032)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/pale_uruk_spears.txt",1033)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/black_uruk_spears.txt",1034)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/isengard_half_trolls.txt",1035)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/uruk_hai_spearguard.txt",1036)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/mirkwood_archers.txt",1037)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/loke_rim_cavalry.txt",1038)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/kars_chosen.txt",1039)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/wargoat_chariot.txt",1040)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/wargoat_spears.txt",1041)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/framsguard_axemen.txt",1042)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/framsguard_spearmen.txt",1043)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/khazad_wargoats.txt",1044)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/legion_crossbows.txt",1045)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/helms_hammers.txt",1046)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/moon_guard.txt",1047)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/beorning_bears.txt",1048)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/guldur_uruk_wargs.txt",1049)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/woodland_hunters.txt",1050)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/watch_shirriffs.txt",1051)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/raider_warband.txt",1052)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/raider_skirmishers.txt",1053)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/farrhun_mercenaries.txt",1054)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/harondor_mercenaries.txt",1055)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/privateer_axemen.txt",1056)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/privateer_cavalry.txt",1057)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/saralainn_mercenaries.txt",1058)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/azrazair_raiders.txt",1059)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/azrazair_archers.txt",1060)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/haradrim_spearmen.txt",1061)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/mirkwood_goblins.txt",1065)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/mirkwood_hunters.txt",1066)
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/snaga_skirmishers.txt",1067)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/snaga_archers.txt",1068)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/steppe_tribesmen.txt",1069)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/steppe_archers.txt",1070)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/marauders.txt",1071)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/realm_sentinels.txt",1072)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/ost_edhil_rangers.txt",1073)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/ost_in_edhil_champions.txt",1074)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/guardians_of_eregion.txt",1075)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/feanorian_lancers.txt",1076)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_royal_guard.txt",1077)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/silver_guard.txt",1078)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/highborn_phalanx.txt",1079)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_horselords.txt",1080)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_blademasters.txt",1081)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_shield.txt",1082)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_chariot.txt",1083)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_cavalry.txt",1084)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_bladesmen.txt",1085)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_marines.txt",1086)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_heavy_pikes.txt",1087)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_mounted_wardens.txt",1088)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_infantry.txt",1089)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_coastal_wardens.txt",1090)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_scouts_quendi.txt",1091)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_bow_quendi.txt",1092)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_marines_quendi.txt",1093)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_pike_quendi.txt",1094)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_rangers.txt",1095)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/rhunnic_spears.txt",1096)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/galadhrim_horsearcher.txt",1097)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/galadhrim_pikes.txt",1098)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/rivendell_riders.txt",1099)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/rivendell_swords.txt",1100)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/rivendell_spears.txt",1101)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/rivendell_bows.txt",1102)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/amanyar_pikes.txt",1103)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/amanyar_archers.txt",1104)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_swords.txt",1105)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falathrim_axes.txt",1106)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falathrim_spears.txt",1107)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falathrim_heavyaxes.txt",1108)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falathrim_marines.txt",1109)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falathrim_archers.txt",1110)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falathrim_skirmishers.txt",1111)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/sindar_riders.txt",1112)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/lindon_nobles.txt",1113)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eldarinwe_bodyguards.txt",1114)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/falas_lords.txt",1115)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/armored_balrog.txt",1116)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/moria_balrog.txt",1117)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/barad_eithel_archers.txt",1118)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/heavenly_arch_archers.txt",1119)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/hearth_elders.txt",1120)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_mithrim_spearmen.txt",1121)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_mithrim_swordsmen.txt",1122)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/cirdan_bg.txt",1123)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/fountain_champions.txt",1124)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/steel_gateguards.txt",1125)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/vinyamar_marines.txt",1126)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/fingolfin_bg.txt",1127)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/fingon_riders.txt",1128)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_bladesmen.txt",1129)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/barad_eithel_blademasters.txt",1130)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_rivendell_spears.txt",1131)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_rivendell_swords.txt",1132)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_rivendell_riders.txt",1133)  
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_rivendell_bows.txt",1134)  
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_lindar_guards.txt",1135)  
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_lindar_bowmen.txt",1136)  
	M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_lindon_longspears.txt",1137)  
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_mithrim_riders.txt",1138)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_mithrim_archers.txt",1139)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_lindar_mariners.txt",1140)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/e_amanyar_pikes.txt",1141)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_spearmen.txt",1142)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_greataxes.txt",1143)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_pikes.txt",1144)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_marines.txt",1145)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_archers.txt",1146)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_skirmishers.txt",1147)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_barad_riders.txt",1148)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_cundo_swords.txt",1149)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_cundo_pikes.txt",1150)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_cundo_halberds.txt",1151)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_cundo_bows.txt",1152)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_cundo_horsearchers.txt",1153)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_bg_lindon.txt",1154)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_cundo_chariot.txt",1155)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldorin_bg_imladris.txt",1156)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/alqualonde_accursed.txt",1157)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/maedhros_oathsworn.txt",1158)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/helevorn_pikemen.txt",1159)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/himring_footmen.txt",1160)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/himring_archers.txt",1161)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/aglon_riders.txt",1162)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/aglon_archers.txt",1163)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/twins_bg.txt",1164)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/maglor_knights.txt",1165)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/feanor_bg.txt",1166)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/celegorm_hunters.txt",1167)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/aglon_defenders.txt",1168)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/gwindor_swordsmen.txt",1169)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/gwindor_archers.txt",1170)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/king_retainers.txt",1171)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/noldor_honourguard.txt",1172)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/egledhrim.txt",1173)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/elf_archer3.txt",1174)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/elf_spear.txt",1175)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/elf_sword.txt",1176)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eldar_cavalry.txt",1177)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/hirneryn_marchwardens.txt",1178)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/loke_innas_rim_real.txt",1179)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/clan_axemen.txt",1180)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/gwindor_spearmen.txt",1181)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/gwindor_riders.txt",1182)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/himring_twohswordsmen.txt",1183)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/sentinels_feanor.txt",1184)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/beekeepers.txt",1185)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_moon_guard.txt",1186)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/eregion_heavy_warriors.txt",1187)
    M2TWEOPDU.addEopEduEntryFromFile(modPath.."/youneuoy_Data/unitTypes/carnil_sharpshooters.txt",1188)

end

function eur_EOP_units.populateEDB()
    ----------------------------------------CORE CASTLE BUILDING CHAIN------------------------------------
    local core_castle_buildingBuild = EDB.getBuildingByName("core_castle_building");
    if core_castle_buildingBuild then
       --core_castle_building level 1
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 0, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
       --core_castle_building level 2  
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 1, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
       --core_castle_building level 3 
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 2, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
       --core_castle_building level 4
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 3, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
       --core_castle_building level 5
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(core_castle_buildingBuild, 4, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        

    end


    ----------------------------------------STABLES BUILDING CHAIN--------------------------------------------

    local equestrianBuild = EDB.getBuildingByName("equestrian");
    if equestrianBuild then
     --equestrian level 1
        EDB.addBuildingPool(equestrianBuild, 0, 1097, 1.0, 0.07, 1.0, 0.0, "factions { ireland, } and region_religion elven 50 ");
        EDB.addBuildingPool(equestrianBuild, 0, 1098, 1.0, 0.07, 1.0, 0.0, "factions { ireland, } and region_religion elven 50 ");


     --equestrian level 2    
        EDB.addBuildingPool(equestrianBuild, 1, 1007, 1.0, 0.07, 1.0, 0.0, "factions { mongols, } and region_religion elven 75 and hidden_resource forest");


     --equestrian level 3  
        EDB.addBuildingPool(equestrianBuild, 2, 1006, 1.0, 0.06, 2.0, 0.0, "factions { france, }  and region_religion catholic 75 and hidden_resource mountains "); 
        EDB.addBuildingPool(equestrianBuild, 2, 1020, 1.0, 0.06, 2.0, 0.0, "factions { gundabad, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(equestrianBuild, 2, 1021, 1.0, 0.06, 2.0, 0.0, "factions { france, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(equestrianBuild, 2, 1022, 1.0, 0.06, 2.0, 0.0, "factions { hre, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(equestrianBuild, 2, 1024, 1.0, 0.06, 2.0, 0.0, "factions { poland, }  and region_religion catholic 50 ");       
        EDB.addBuildingPool(equestrianBuild, 2, 1038, 1.0, 0.095, 1.0, 0.0, "factions { venice, } and region_religion orthodox 50");
        EDB.addBuildingPool(equestrianBuild, 2, 1049, 1.0, 0.07, 2.0, 0.0, "factions { poland, }  and region_religion catholic 75 ");       



     --equestrian level 4
    end 

    ----------------------------------------CASTLE STABLES BUILDING CHAIN--------------------------------------

    local c_equestrianBuild = EDB.getBuildingByName("c_equestrian");
    if c_equestrianBuild then
        --c_equestrian level 1
        EDB.addBuildingPool(c_equestrianBuild, 0, 1097, 1.0, 0.07, 1.0, 0.0, "factions { ireland, } and region_religion elven 50 ");
        EDB.addBuildingPool(c_equestrianBuild, 0, 1098, 1.0, 0.07, 1.0, 0.0, "factions { ireland, } and region_religion elven 50 ");

        --c_equestrian level 2        
        EDB.addBuildingPool(c_equestrianBuild, 1, 1007, 1.0, 0.08, 1.0, 0.0, "factions { mongols, } and region_religion elven 75 and hidden_resource forest ");        
        EDB.addBuildingPool(c_equestrianBuild, 1, 1038, 1.0, 0.075, 1.0, 0.0, "factions { venice, } and region_religion orthodox 50");
        --c_equestrian level 3 
        EDB.addBuildingPool(c_equestrianBuild, 2, 1006, 1.0, 0.06, 2.0, 0.0, "factions { france, }  and region_religion catholic 75 and hidden_resource mountains ");
        EDB.addBuildingPool(c_equestrianBuild, 2, 1020, 1.0, 0.06, 2.0, 0.0, "factions { gundabad, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(c_equestrianBuild, 2, 1021, 1.0, 0.06, 2.0, 0.0, "factions { france, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(c_equestrianBuild, 2, 1022, 1.0, 0.06, 2.0, 0.0, "factions { hre, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(c_equestrianBuild, 2, 1023, 1.0, 0.06, 2.0, 0.0, "factions { england, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(c_equestrianBuild, 2, 1024, 1.0, 0.06, 2.0, 0.0, "factions { poland, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(c_equestrianBuild, 2, 1038, 1.0, 0.075, 1.0, 0.0, "factions { venice, } and region_religion orthodox 50");
        EDB.addBuildingPool(c_equestrianBuild, 2, 1049, 1.0, 0.08, 2.0, 0.0, "factions { poland, }  and region_religion catholic 75 ");  


        --c_equestrian level 4
    end 
    ----------------------------------------WILDMEN BARRACKS BUILDING CHAIN------------------------------------
    local anduin_barracksBuild = EDB.getBuildingByName("anduin_barracks");
    if anduin_barracksBuild then
       --anduin_barracks level 1
       --anduin_barracks level 2        
       --anduin_barracks level 3 
        EDB.addBuildingPool(anduin_barracksBuild, 2, 1048, 1.0, 0.07, 1.0, 0.0, "factions { timurids, } and region_religion northmen 75 and hidden_resource Vale and hidden_resource ResB ");        
       --anduin_barracks level 4
       --anduin_barracks level 5
       --anduin_barracks level 6
       --anduin_barracks level 7
        EDB.addBuildingPool(anduin_barracksBuild, 6, 1042, 1.0, 0.07, 1.0, 0.0, "factions { timurids, } and region_religion northmen 75 and hidden_resource mountain_pass");        
        EDB.addBuildingPool(anduin_barracksBuild, 6, 1043, 1.0, 0.07, 1.0, 0.0, "factions { timurids, } and region_religion northmen 75 and hidden_resource mountain_pass");

    end
     ----------------------------------------WILDMEN CASTLE BARRACKS BUILDING CHAIN------------------------------------
    local anduin_barracks_castleBuild = EDB.getBuildingByName("anduin_barracks_castle");
    if anduin_barracks_castleBuild then
       --anduin_barracks_castle level 1
       --anduin_barracks_castle level 2        
       --anduin_barracks_castle level 3  
        EDB.addBuildingPool(anduin_barracks_castleBuild, 2, 1048, 1.0, 0.09, 1.0, 0.0, "factions { timurids, } and region_religion northmen 75 and hidden_resource Vale and hidden_resource ResB ");        
	   
       --anduin_barracks_castle level 4
       --anduin_barracks_castle level 5
       --anduin_barracks_castle level 6
       --anduin_barracks_castle level 7
       EDB.addBuildingPool(anduin_barracks_castleBuild, 6, 1042, 1.0, 0.085, 1.0, 0.0, "factions { timurids, } and region_religion northmen 75 and hidden_resource mountain_pass");        
       EDB.addBuildingPool(anduin_barracks_castleBuild, 6, 1043, 1.0, 0.085, 1.0, 0.0, "factions { timurids, } and region_religion northmen 75 and hidden_resource mountain_pass");
 
    end
       ---------------------------------------BARRACKS BUILDING CHAIN--------------------------------------------
 
    local barracksBuild = EDB.getBuildingByName("barracks");
    if barracksBuild then
       --barracks level 1
	    EDB.addBuildingPool(barracksBuild, 0, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 0, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 0, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 0, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 0, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 0, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA "); 
        EDB.addBuildingPool(barracksBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
        
       
	   
       --barracks level 2 
        EDB.addBuildingPool(barracksBuild, 1, 1016, 1.0, 0.18, 3.0, 0.0, "factions { poland, }  and region_religion catholic 50 "); 
        EDB.addBuildingPool(barracksBuild, 1, 1023, 1.0, 0.06, 2.0, 0.0, "factions { england, }  and region_religion catholic 50 ");
        EDB.addBuildingPool(barracksBuild, 1, 1034, 1.0, 0.18, 3.0, 0.0, "factions { england, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(barracksBuild, 1, 1036, 1.0, 0.1, 1.0, 0.0, "factions { france, }  and event_counter is_the_ai 1 and region_religion catholic 65 ");  
	    EDB.addBuildingPool(barracksBuild, 1, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 1, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 1, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 1, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 1, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 1, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
        EDB.addBuildingPool(barracksBuild, 1, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");

       --barracks level 3 
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource dorwinion and hidden_resource ResL ");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResF");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Cardolan and hidden_resource ResH ");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Arthedain and hidden_resource ResE or hidden_resource ResG ");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Angmar and hidden_resource ResF or hidden_resource ResJ");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Enedwaith and hidden_resource ResE ");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Eregion and hidden_resource ResF or hidden_resource ResI or hidden_resource ResK ");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource GondorEast and hidden_resource ResL");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource GondorWest and hidden_resource ResL");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Lindon and hidden_resource ResB or hidden_resource ResE");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Logathavuld and hidden_resource ResC or hidden_resource ResB");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Mirkwood and hidden_resource ResC or hidden_resource ResL");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Mordor and hidden_resource ResF");    
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Rhun and hidden_resource ResF");   
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Rohan and hidden_resource ResJ or hidden_resource ResA");   
        EDB.addBuildingPool(barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Vale and hidden_resource ResB or hidden_resource ResH");   
        EDB.addBuildingPool(barracksBuild, 2, 1017, 1.0, 0.04, 2.0, 0.0, "factions { portugal, } and event_counter agandaur_ring_event 1  and region_religion catholic 75  ");    
        EDB.addBuildingPool(barracksBuild, 2, 1018, 1.0, 0.04, 2.0, 0.0, "factions { portugal, } and event_counter agandaur_ring_event 1  and region_religion catholic 75  "); 
        EDB.addBuildingPool(barracksBuild, 2, 1019, 1.0, 0.04, 2.0, 0.0, "factions { portugal, } and event_counter agandaur_ring_event 1  and region_religion catholic 75  ");    
        EDB.addBuildingPool(barracksBuild, 2, 1032, 1.0, 0.055, 2.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 50 "); 
        EDB.addBuildingPool(barracksBuild, 2, 1033, 1.0, 0.055, 2.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 50 "); 
        EDB.addBuildingPool(barracksBuild, 2, 1036, 1.0, 0.1, 2.0, 1.0, "factions { france, }  and region_religion catholic 65 ");  
        EDB.addBuildingPool(barracksBuild, 2, 1040, 1.0, 0.05, 2.0, 1.0, "factions { moors, }  and region_religion dwarven 75 and hidden_resource mountains ");  
        EDB.addBuildingPool(barracksBuild, 2, 1041, 1.0, 0.06, 2.0, 1.0, "factions { moors, }  and region_religion dwarven 75 and hidden_resource mountains "); 
        EDB.addBuildingPool(barracksBuild, 2, 1044, 1.0, 0.06, 2.0, 1.0, "factions { norway, }  and region_religion dwarven 75 and hidden_resource mountains "); 
        EDB.addBuildingPool(barracksBuild, 2, 1023, 1.0, 0.06, 2.0, 0.0, "factions { england, }  and region_religion catholic 50 ");
	    EDB.addBuildingPool(barracksBuild, 2, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 2, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 2, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 2, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 2, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 2, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");    
        EDB.addBuildingPool(barracksBuild, 2, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
    
       --barracks level 4
	   	EDB.addBuildingPool(barracksBuild, 3, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 3, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 3, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 3, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 3, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 3, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");      
        EDB.addBuildingPool(barracksBuild, 3, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
  

       --barracks level 5
        EDB.addBuildingPool(barracksBuild, 4, 1016, 1.0, 0.18, 3.0, 0.0, "factions { poland, }  and region_religion catholic 50 "); 
        EDB.addBuildingPool(barracksBuild, 4, 1027, 1.0, 0.07, 1.0, 0.0, "factions { poland, }  and region_religion catholic 75 "); 
        EDB.addBuildingPool(barracksBuild, 4, 1028, 1.0, 0.07, 1.0, 0.0, "factions { poland, }  and region_religion catholic 75 "); 
        EDB.addBuildingPool(barracksBuild, 4, 1029, 1.0, 0.07, 1.0, 0.0, "factions { poland, }  and region_religion catholic 75 "); 
	    EDB.addBuildingPool(barracksBuild, 4, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 4, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 4, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(barracksBuild, 4, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 4, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(barracksBuild, 4, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");      
        EDB.addBuildingPool(barracksBuild, 4, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
  
    
    end


    ----------------------------------------CASTLE BARRACKS BUILDING CHAIN--------------------------------------
    local castle_barracksBuild = EDB.getBuildingByName("castle_barracks");
    if castle_barracksBuild then
        --castle_barracks level 1
	    EDB.addBuildingPool(castle_barracksBuild, 0, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 0, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 0, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 0, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 0, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 0, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");  
        EDB.addBuildingPool(castle_barracksBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
      

        --castle_barracks level 2
        EDB.addBuildingPool(castle_barracksBuild, 1, 1016, 1.0, 0.18, 3.0, 0.0, "factions { poland, }  and region_religion catholic 50 ");
        EDB.addBuildingPool(castle_barracksBuild, 1, 1023, 1.0, 0.06, 2.0, 0.0, "factions { england, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(castle_barracksBuild, 1, 1034, 1.0, 0.18, 3.0, 0.0, "factions { england, }  and region_religion catholic 50 ");  
        EDB.addBuildingPool(castle_barracksBuild, 1, 1036, 1.0, 0.1, 1.0, 0.0, "factions { france, } and event_counter is_the_ai 1 and region_religion catholic 65 ");  
	    EDB.addBuildingPool(castle_barracksBuild, 1, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 1, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 1, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 1, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 1, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 1, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
        EDB.addBuildingPool(castle_barracksBuild, 1, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");

        --castle_barracks level 3    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource dorwinion and hidden_resource ResL ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResF");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Cardolan and hidden_resource ResH ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Arthedain and hidden_resource ResE or hidden_resource ResG ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Angmar and hidden_resource ResF or hidden_resource ResJ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Enedwaith and hidden_resource ResE ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Eregion and hidden_resource ResF or hidden_resource ResI or hidden_resource ResK ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource GondorEast and hidden_resource ResL");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource GondorWest and hidden_resource ResL");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Lindon and hidden_resource ResB or hidden_resource ResE");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Logathavuld and hidden_resource ResC or hidden_resource ResB");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Mirkwood and hidden_resource ResC or hidden_resource ResL");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Mordor and hidden_resource ResF");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Rhun and hidden_resource ResF");   
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Rohan and hidden_resource ResJ or hidden_resource ResA");   
        EDB.addBuildingPool(castle_barracksBuild, 2, 1012, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_gondor_allied 1 and region_religion kings 75 and hidden_resource Vale and hidden_resource ResB or hidden_resource ResH");   
        EDB.addBuildingPool(castle_barracksBuild, 2, 1017, 1.0, 0.04, 2.0, 0.0, "factions { portugal, } and event_counter agandaur_ring_event 1  and region_religion catholic 75  ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1018, 1.0, 0.04, 2.0, 0.0, "factions { portugal, } and event_counter agandaur_ring_event 1  and region_religion catholic 75  ");  
        EDB.addBuildingPool(castle_barracksBuild, 2, 1019, 1.0, 0.04, 2.0, 0.0, "factions { portugal, } and event_counter agandaur_ring_event 1  and region_religion catholic 75  ");    
        EDB.addBuildingPool(castle_barracksBuild, 2, 1040, 1.0, 0.05, 2.0, 1.0, "factions { moors, }  and region_religion dwarven 75 and hidden_resource mountains ");  
        EDB.addBuildingPool(castle_barracksBuild, 2, 1041, 1.0, 0.06, 2.0, 1.0, "factions { moors, }  and region_religion dwarven 75 and hidden_resource mountains ");  
        EDB.addBuildingPool(castle_barracksBuild, 2, 1044, 1.0, 0.06, 2.0, 1.0, "factions { norway, }  and region_religion dwarven 75 and hidden_resource mountains ");  
        EDB.addBuildingPool(castle_barracksBuild, 2, 1023, 1.0, 0.06, 2.0, 0.0, "factions { england, }  and region_religion catholic 50 ");  
	    EDB.addBuildingPool(castle_barracksBuild, 2, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 2, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 2, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 2, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 2, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 2, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");      
        EDB.addBuildingPool(castle_barracksBuild, 2, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
  
       --castle barracks level 4
	   	EDB.addBuildingPool(castle_barracksBuild, 3, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 3, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 3, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 3, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 3, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 3, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");    
        EDB.addBuildingPool(castle_barracksBuild, 3, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
   
       --castle barracks level 5 
        EDB.addBuildingPool(castle_barracksBuild, 4, 1016, 1.0, 0.18, 3.0, 0.0, "factions { poland, }  and region_religion catholic 50 "); 
        EDB.addBuildingPool(castle_barracksBuild, 4, 1027, 1.0, 0.08, 1.0, 0.0, "factions { poland, }  and region_religion catholic 75 "); 
        EDB.addBuildingPool(castle_barracksBuild, 4, 1028, 1.0, 0.08, 1.0, 0.0, "factions { poland, }  and region_religion catholic 75 "); 
        EDB.addBuildingPool(castle_barracksBuild, 4, 1029, 1.0, 0.08, 1.0, 0.0, "factions { poland, }  and region_religion catholic 75 "); 
	    EDB.addBuildingPool(castle_barracksBuild, 4, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 4, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 4, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 4, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 4, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 4, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");     
        EDB.addBuildingPool(castle_barracksBuild, 4, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
   

        --castle barracks level 6
        EDB.addBuildingPool(castle_barracksBuild, 5, 1032, 1.0, 0.055, 2.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 50 "); 
        EDB.addBuildingPool(castle_barracksBuild, 5, 1033, 1.0, 0.055, 2.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 50 "); 
        EDB.addBuildingPool(castle_barracksBuild, 5, 1036, 1.0, 0.1, 2.0, 0.0, "factions { france, }  and region_religion catholic 65 ");
	    EDB.addBuildingPool(castle_barracksBuild, 5, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 5, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 5, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(castle_barracksBuild, 5, 1069, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 5, 1070, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(castle_barracksBuild, 5, 1071, 1.0, 0.06, 1.0, 0.0, "factions { spain, venice, } and hidden_resource Rhun and hidden_resource ResA ");  
        EDB.addBuildingPool(castle_barracksBuild, 5, 1096, 1.0, 0.07, 1.0, 0.0, "factions { venice, } and region_religion orthodox 25");
      
    end


    ----------------------------------------MISSILES BUILDING CHAIN--------------------------------------------
    local missilesBuild = EDB.getBuildingByName("missiles");
    if missilesBuild then
       --missiles level 1
       EDB.addBuildingPool(missilesBuild, 0, 1025, 1.0, 0.08, 2.0, 0.0, "factions { norway, } and region_religion dwarven 25 ");
       --missiles level 2
       EDB.addBuildingPool(missilesBuild, 1, 1025, 1.0, 0.08, 2.0, 0.0, "factions { norway, } and region_religion dwarven 25 ");
       EDB.addBuildingPool(missilesBuild, 1, 1045, 1.0, 0.07, 1.0, 0.0, "factions { norway, } and region_religion dwarven 50");
       EDB.addBuildingPool(missilesBuild, 1, 1037, 1.0, 0.18, 3.0, 0.0, "factions { poland, }  and region_religion catholic 50 "); 

       --missiles level 3
       EDB.addBuildingPool(missilesBuild, 2, 1025, 1.0, 0.08, 2.0, 0.0, "factions { norway, } and region_religion dwarven 25 ");
    end 

    ----------------------------------------CASTLE MISSILES BUILDING CHAIN---------------------------------------
    local c_missilesBuild = EDB.getBuildingByName("c_missiles");
    if c_missilesBuild then
       --c_missiles level 1
       EDB.addBuildingPool(c_missilesBuild, 0, 1025, 1.0, 0.085, 2.0, 0.0, "factions { norway, } and region_religion dwarven 25 ");
       --c_missiles level 2
       EDB.addBuildingPool(c_missilesBuild, 1, 1025, 1.0, 0.085, 2.0, 0.0, "factions { norway, } and region_religion dwarven 25 ");
       EDB.addBuildingPool(c_missilesBuild, 1, 1045, 1.0, 0.075, 1.0, 0.0, "factions { norway, } and region_religion dwarven 50");
       EDB.addBuildingPool(c_missilesBuild, 1, 1037, 1.0, 0.18, 3.0, 0.0, "factions { poland, }  and region_religion catholic 50 "); 

       --c_missiles level 3
       EDB.addBuildingPool(c_missilesBuild, 2, 1025, 1.0, 0.085, 2.0, 0.0, "factions { norway, } and region_religion dwarven 25 ");
    end 
    ----------------------------------------FOREST CAMPS BUILDING CHAIN--------------------------------------------
    local forest_campsBuild = EDB.getBuildingByName("forest_camps");
    if forest_campsBuild then
       --forest_camps level 1
        EDB.addBuildingPool(forest_campsBuild, 0, 1050, 1.0, 0.035, 1.0, 0.0, "factions { normans, } and region_religion wildmen 10 "); 
        EDB.addBuildingPool(forest_campsBuild, 0, 1050, 1.0, 0.035, 1.0, 0.0, "factions { turks, } and region_religion islam 10 "); 
        EDB.addBuildingPool(forest_campsBuild, 0, 1050, 1.0, 0.035, 1.0, 0.0, "factions { byzantium, } and region_religion northmen 10 and event_counter dorwinion_men 1 "); 

        --forest_camps level 2       
        EDB.addBuildingPool(forest_campsBuild, 1, 1050, 1.0, 0.05, 1.0, 0.0, "factions { normans, } and region_religion wildmen 10 "); 
        EDB.addBuildingPool(forest_campsBuild, 1, 1050, 1.0, 0.05, 1.0, 0.0, "factions { turks, } and region_religion islam 10 "); 
        EDB.addBuildingPool(forest_campsBuild, 1, 1050, 1.0, 0.05, 1.0, 0.0, "factions { byzantium, } and region_religion northmen 10 and event_counter dorwinion_men 1 "); 

    end 
    ----------------------------------------TROLL CAGE BUILDING CHAIN--------------------------------------------
    local troll_cagesBuild = EDB.getBuildingByName("troll_cages");
    if troll_cagesBuild then
       --troll_cages level 1
        EDB.addBuildingPool(troll_cagesBuild, 0, 1031, 1.0, 0.05, 1.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 25 "); 
        EDB.addBuildingPool(troll_cagesBuild, 0, 1035, 1.0, 0.05, 1.0, 0.0, "factions { france, } and region_religion catholic 25 "); 

        --troll_cages level 2       
        EDB.addBuildingPool(troll_cagesBuild, 1, 1005, 1.0, 0.05, 1.0, 0.0, "factions { france, } and region_religion catholic 25 ");
        EDB.addBuildingPool(troll_cagesBuild, 1, 1014, 1.0, 0.05, 1.0, 0.0, "factions { poland, } and region_religion catholic 25 ");
        EDB.addBuildingPool(troll_cagesBuild, 1, 1015, 1.0, 0.05, 1.0, 0.0, "factions { hre, } and region_religion catholic 25 ");
        EDB.addBuildingPool(troll_cagesBuild, 1, 1031, 1.0, 0.05, 1.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 25 "); 
        EDB.addBuildingPool(troll_cagesBuild, 1, 1035, 1.0, 0.05, 1.0, 0.0, "factions { france, } and region_religion catholic 25 "); 

    end 
    ----------------------------------------CASTLE TROLL CAGE BUILDING CHAIN--------------------------------------------

    local troll_cages_castleBuild = EDB.getBuildingByName("troll_cages_castle");
    if troll_cages_castleBuild then
       --troll_cages_castle level 1
        EDB.addBuildingPool(troll_cages_castleBuild, 0, 1031, 1.0, 0.05, 1.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 50 "); 
        EDB.addBuildingPool(troll_cages_castleBuild, 0, 1035, 1.0, 0.05, 1.0, 0.0, "factions { france, } and region_religion catholic 25 "); 
        --troll_cages_castle level 2
        EDB.addBuildingPool(troll_cages_castleBuild, 1, 1005, 1.0, 0.05, 1.0, 0.0, "factions { france, } and region_religion catholic 25 ");
        EDB.addBuildingPool(troll_cages_castleBuild, 1, 1014, 1.0, 0.05, 1.0, 0.0, "factions { poland, } and region_religion catholic 25 ");
        EDB.addBuildingPool(troll_cages_castleBuild, 1, 1015, 1.0, 0.05, 1.0, 0.0, "factions { hre, } and region_religion catholic 25 ");
        EDB.addBuildingPool(troll_cages_castleBuild, 1, 1031, 1.0, 0.05, 1.0, 0.0, "factions { gundabad, } and event_counter mazog_ring_event 1 and region_religion catholic 50 "); 
        EDB.addBuildingPool(troll_cages_castleBuild, 1, 1035, 1.0, 0.05, 1.0, 0.0, "factions { france, } and region_religion catholic 25 "); 

    end 
    --------------------------------------------SIEGE BUILDING CHAIN-------------------------------------------------

    local siegeBuild = EDB.getBuildingByName("siege");
    if siegeBuild then
       --siege level 1        
        EDB.addBuildingPool(siegeBuild, 0, 1008, 1.0, 0.07, 2.0, 0.0, "factions { france, } and region_religion catholic 25 ");
       --siege level 2
        EDB.addBuildingPool(siegeBuild, 1, 1008, 1.0, 0.07, 2.0, 0.0, "factions { france, } and region_religion catholic 25 ");
       --siege level 3
    end 
    --------------------------------------------CASTLE SIEGE BUILDING CHAIN-------------------------------------------------

    local castle_siegeBuild = EDB.getBuildingByName("castle_siege");
    if castle_siegeBuild then
       --castle_siege level 1        
        EDB.addBuildingPool(castle_siegeBuild, 0, 1008, 1.0, 0.07, 2.0, 0, "factions { france, } and region_religion catholic 25 ");
       --castle_siege level 2
        EDB.addBuildingPool(castle_siegeBuild, 1, 1008, 1.0, 0.07, 2.0, 0, "factions { france, } and region_religion catholic 25 ");
       --castle_siege level 3
    end 
    ----------------------------------------SMITH BUILDING CHAIN-------------------------------------------
    local smithBuild = EDB.getBuildingByName("smith");
    if smithBuild then
       --smith level 1
       EDB.addBuildingPool(smithBuild, 0, 1026, 1.0, 0.09, 2.0, 0.0, "factions { norway, hungary, moors, } and region_religion dwarven 20 ");
       --smith level 2
       EDB.addBuildingPool(smithBuild, 1, 1026, 1.0, 0.09, 2.0, 0.0, "factions { norway, hungary, moors, } and region_religion dwarven 20 ");
       --smith level 3
       EDB.addBuildingPool(smithBuild, 2, 1026, 1.0, 0.09, 2.0, 0.0, "factions { norway, hungary, moors, } and region_religion dwarven 20 ");
       --smith level 4
       --smith level 5
       --smith level 6
       EDB.addBuildingPool(smithBuild, 5, 1026, 1.0, 0.09, 2.0, 0.0, "factions { norway, hungary, moors, } and region_religion dwarven 20 ");
       --smith level 7
       --smith level 8
       EDB.addBuildingPool(smithBuild, 7, 1026, 1.0, 0.09, 2.0, 0.0, "factions { norway, hungary, moors, } and region_religion dwarven 20 ");
       --smith level 9
       EDB.addBuildingPool(smithBuild, 8, 1026, 1.0, 0.09, 2.0, 0.0, "factions { norway, hungary, moors, } and region_religion dwarven 20 ");

    end 
	
	----------------------------------------ORC PIT GUILD BUILDING CHAIN--------------------------------------------
    local guild_assassins_muslim_guildBuild = EDB.getBuildingByName("guild_assassins_muslim_guild");
    if guild_assassins_muslim_guildBuild then
       --guild_assassins_muslim_guild level 1    
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 0, 1052, 1.0, 0.12, 1.0, 0, "factions { hre, portugal, poland, england, } ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 0, 1053, 1.0, 0.12, 1.0, 0, "factions { hre, portugal, poland, england, }  ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 0, 1052, 1.0, 0.06, 1.0, 0, "factions { gundabad, france, } ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 0, 1053, 1.0, 0.06, 1.0, 0, "factions { gundabad, france, }  ");
       --guild_assassins_muslim_guild level 2
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 1, 1052, 1.0, 0.14, 2.0, 0, "factions { hre, portugal, poland, england,}  ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 1, 1053, 1.0, 0.14, 2.0, 0, "factions { hre, portugal, poland, england, } ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 1, 1052, 1.0, 0.06, 2.0, 0, "factions { gundabad, france, } ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 1, 1053, 1.0, 0.06, 2.0, 0, "factions { gundabad, france, }  ");
       --guild_assassins_muslim_guild level 3
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 2, 1052, 1.0, 0.15, 2.0, 1.0, "factions { hre, portugal, poland, england, } ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 2, 1053, 1.0, 0.15, 2.0, 1.0, "factions { hre, portugal, poland, england, } ");        
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 2, 1052, 1.0, 0.08, 2.0, 1.0, "factions { gundabad, france, } ");
        EDB.addBuildingPool(guild_assassins_muslim_guildBuild, 2, 1053, 1.0, 0.08, 2.0, 1.0, "factions { gundabad, france, }  ");
    end 
    ----------------------------------------WOODSMEN GUILD BUILDING CHAIN--------------------------------------------
	local guild_woodsmens_guildBuild = EDB.getBuildingByName("guild_woodsmens_guild");
    if guild_woodsmens_guildBuild then
       --guild_woodsmens_guild level 1    
        EDB.addBuildingPool(guild_woodsmens_guildBuild, 0, 1051, 0.0, 0.025, 0.5, 0, "factions { normans, }  ");
       --guild_woodsmens_guild level 2
        EDB.addBuildingPool(guild_woodsmens_guildBuild, 1, 1051, 0.0, 0.025, 0.5, 0.0, "factions { normans, }  ");
       --guild_woodsmens_guild level 3
        EDB.addBuildingPool(guild_woodsmens_guildBuild, 2, 1051, 0.0, 0.025, 0.5, 0.0, "factions { normans, } ");
    end 
    ----------------------------------------AVENGERS GUILD BUILDING CHAIN--------------------------------------------

    local avengers_guildBuild = EDB.getBuildingByName("avengers_guild");
    if avengers_guildBuild then
       --avengers_guild level 1    
        EDB.addBuildingPool(avengers_guildBuild, 0, 1002, 1.0, 0.035, 1.0, 0, "factions { gundabad, } and region_religion catholic 50 ");
        EDB.addBuildingPool(avengers_guildBuild, 0, 1003, 1.0, 0.035, 1.0, 0, "factions { gundabad, } and region_religion catholic 50 and hidden_resource trolls ");
       --avengers_guild level 2
        EDB.addBuildingPool(avengers_guildBuild, 1, 1002, 1.0, 0.055, 2.0, 1.0, "factions { gundabad, } and region_religion catholic 50 ");
        EDB.addBuildingPool(avengers_guildBuild, 1, 1003, 1.0, 0.045, 2.0, 1.0, "factions { gundabad, } and region_religion catholic 50 and hidden_resource trolls ");
       --avengers_guild level 3
        EDB.addBuildingPool(avengers_guildBuild, 2, 1002, 1.0, 0.075, 2.0, 2.0, "factions { gundabad, } and region_religion catholic 50 ");
        EDB.addBuildingPool(avengers_guildBuild, 2, 1003, 1.0, 0.05, 2.0, 2.0, "factions { gundabad, } and region_religion catholic 50 and hidden_resource trolls ");        
    end 

    --------------------------------------FIEFDOM BARRACKS BUILDING CHAIN-------------------------------------------- 
    local fiefdom_barracksBuild = EDB.getBuildingByName("fiefdom_barracks");
    if fiefdom_barracksBuild then
       --fiefdom_barracks level 1
       --fiefdom_barracks level 2    
        EDB.addBuildingPool(fiefdom_barracksBuild, 1, 1013, 1.0, 0.05, 1.0, 1.0, "factions { sicily, } and region_religion islam 50 ");
    end
    --------------------------------------UMBAR CONTROL CAMP BUILDING CHAIN-------------------------------------------- 
    local umbar_control_campBuild = EDB.getBuildingByName("umbar_control_camp");
    if umbar_control_campBuild then
       --umbar_control_camp level 1
	 	EDB.addBuildingPool(umbar_control_campBuild, 0, 1069, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(umbar_control_campBuild, 0, 1071, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
 	    EDB.addBuildingPool(umbar_control_campBuild, 0, 1058, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Cardolan and hidden_resource ResB ");        
	    EDB.addBuildingPool(umbar_control_campBuild, 0, 1058, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Cardolan and hidden_resource ResC ");  
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResG");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResF");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResE");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResJ");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResD");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResI");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResB");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResC");      
      --umbar_control_camp level 2    
	 	EDB.addBuildingPool(umbar_control_campBuild, 1, 1069, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(umbar_control_campBuild, 1, 1071, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
 	    EDB.addBuildingPool(umbar_control_campBuild, 1, 1058, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Cardolan and hidden_resource ResB ");        
	    EDB.addBuildingPool(umbar_control_campBuild, 1, 1058, 1.0, 0.07, 2.0, 0.0, "factions { russia, } and hidden_resource Cardolan and hidden_resource ResC ");   
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResG");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResF");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResE");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResJ");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResD");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResI");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResB");
        EDB.addBuildingPool(umbar_control_campBuild, 0, 1096, 1.0, 0.07, 1.0, 0.0, "factions { russia, } and region_religion kings 15 and hidden_resource Rhun and hidden_resource ResC");     
    end
	
    ----------------------------------------DUNEDAIN BARRACKS BUILDING CHAIN--------------------------------------------
    local dunedain_barracksBuild = EDB.getBuildingByName("dunedain_barracks");
    if dunedain_barracksBuild then
       --dunedain_barracks level 1
   	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1059, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResC ");        
   	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1061, 1.0, 0.12, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and not hidden_resource ResM and not hidden_resource ResH ");        
    	EDB.addBuildingPool(dunedain_barracksBuild, 0, 1061, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and not hidden_resource ResA and not hidden_resource ResB and not hidden_resource ResC");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 0, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResH or hidden_resource ResM ");        
      --dunedain_barracks level 2    
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1059, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResC ");        
   	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1061, 1.0, 0.12, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and not hidden_resource ResM and not hidden_resource ResH ");        
    	EDB.addBuildingPool(dunedain_barracksBuild, 1, 1061, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and not hidden_resource ResA and not hidden_resource ResB and not hidden_resource ResC");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 1, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResH or hidden_resource ResM ");        
	   --dunedain_barracks level 3
   	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1059, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResC ");        
   	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1061, 1.0, 0.12, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and not hidden_resource ResM and not hidden_resource ResH ");        
    	EDB.addBuildingPool(dunedain_barracksBuild, 2, 1061, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and not hidden_resource ResA and not hidden_resource ResB and not hidden_resource ResC");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(dunedain_barracksBuild, 2, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResH or hidden_resource ResM ");        
   end   
    ----------------------------------------DUNEDAIN CASTLE BARRACKS BUILDING CHAIN--------------------------------------------
    local c_dunedain_barracksBuild = EDB.getBuildingByName("c_dunedain_barracks");
    if c_dunedain_barracksBuild then
       --c_dunedain_barracks level 1
   	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1059, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResC ");        
   	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1061, 1.0, 0.12, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and not hidden_resource ResM and not hidden_resource ResH ");        
    	EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1061, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and not hidden_resource ResA and not hidden_resource ResB and not hidden_resource ResC");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 0, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResH or hidden_resource ResM ");        
       --c_dunedain_barracks level 2    
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1059, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResC ");        
   	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1061, 1.0, 0.12, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and not hidden_resource ResM and not hidden_resource ResH ");        
    	EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1061, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and not hidden_resource ResA and not hidden_resource ResB and not hidden_resource ResC");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 1, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResH or hidden_resource ResM ");        
	   --c_dunedain_barracks level 3
   	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1059, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResC ");        
   	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1061, 1.0, 0.12, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and not hidden_resource ResM and not hidden_resource ResH ");        
    	EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1061, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and not hidden_resource ResA and not hidden_resource ResB and not hidden_resource ResC");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Mordor and hidden_resource ResM or hidden_resource ResL or hidden_resource ResK or hidden_resource ResJ ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { turks, } and hidden_resource Harad and hidden_resource ResM or hidden_resource ResH ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Mordor and hidden_resource ResJ or hidden_resource ResK or hidden_resource ResL or hidden_resource ResM ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Rhun and hidden_resource ResA ");        
	    EDB.addBuildingPool(c_dunedain_barracksBuild, 2, 1069, 1.0, 0.08, 2.0, 0.0, "factions { turks, } and not event_counter reunited_kingdom 1 and hidden_resource Harad and hidden_resource ResH or hidden_resource ResM ");        
    end 
    ----------------------------------------PORT BUILDING CHAIN----------------------------------------------------------------

    local portBuild = EDB.getBuildingByName("port");
    if portBuild then
       --port level 1
       --port level 2        
        EDB.addBuildingPool(portBuild, 1, 1001, 1.0, 0.1, 1.0, 0, "factions { saxons, } and hidden_resource boats ");
        EDB.addBuildingPool(portBuild, 1, 1039, 1.0, 0.02, 1.0, 0.0, "factions { venice, } and region_religion orthodox 75 and event_counter rhun_united 1 and hidden_resource Rhun and hidden_resource ResE or hidden_resource ResF");
       --port level 3
       --port level 4
        EDB.addBuildingPool(portBuild, 3, 1001, 1.0, 0.11, 2.0, 0, "factions { saxons, } and hidden_resource boats ");
        EDB.addBuildingPool(portBuild, 3, 1039, 1.0, 0.04, 1.0, 0.0, "factions { venice, } and region_religion orthodox 75 and event_counter rhun_united 1 and hidden_resource Rhun and hidden_resource ResE or hidden_resource ResF");
       --port level 5
        EDB.addBuildingPool(portBuild, 4, 1039, 1.0, 0.04, 1.0, 2.0, "factions { venice, } and region_religion orthodox 75 and event_counter rhun_united 1 and hidden_resource Rhun and hidden_resource ResE or hidden_resource ResF");

    end
    ----------------------------------------CASTLE PORT BUILDING CHAIN---------------------------------------------------------

    local c_portBuild = EDB.getBuildingByName("c_port");
    if c_portBuild then
       --c_port level 1
       --c_port level 2        
        EDB.addBuildingPool(c_portBuild, 1, 1001, 1.0, 0.1, 1.0, 0, "factions { saxons, } and hidden_resource boats ");
        EDB.addBuildingPool(c_portBuild, 1, 1039, 1.0, 0.02, 1.0, 0.0, "factions { venice, } and region_religion orthodox 75 and event_counter rhun_united 1 and hidden_resource Rhun and hidden_resource ResE or hidden_resource ResF");

       --c_port level 3
       --c_port level 4
        EDB.addBuildingPool(c_portBuild, 3, 1001, 1.0, 0.11, 2.0, 0, "factions { saxons, } and hidden_resource boats ");
        EDB.addBuildingPool(c_portBuild, 3, 1039, 1.0, 0.04, 1.0, 0.0, "factions { venice, } and region_religion orthodox 75 and event_counter rhun_united 1 and hidden_resource Rhun and hidden_resource ResE or hidden_resource ResF");
       --c_port level 5
        EDB.addBuildingPool(c_portBuild, 4, 1039, 1.0, 0.04, 1.0, 2.0, "factions { venice, } and region_religion orthodox 75 and event_counter rhun_united 1 and hidden_resource Rhun and hidden_resource ResE or hidden_resource ResF");

    end
    ----------------------------------------DORWINION MARKET BUILDING CHAIN---------------------------------------------------------
    local dorwinion_marketBuild = EDB.getBuildingByName("dorwinion_market");
    if dorwinion_marketBuild then
       --dorwinion_market level 1
       --dorwinion_market level 2        
        EDB.addBuildingPool(dorwinion_marketBuild, 1, 1057, 1.0, 0.08, 1.0, 0.0, "factions { byzantium, } ");

    end	
	
    -----------------------------------------------CONVERSION BUILDINGS---------------------------------------------------
    -----------------------------------------------DARK TEMPLE BUILDINGS---------------------------------------------------

    local temple_dark_academicBuild = EDB.getBuildingByName("temple_dark_academic");
    if temple_dark_academicBuild then
       --temple_dark_academic level 1
       --temple_dark_academic level 2
       --temple_dark_academic level 3    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource dorwinion and hidden_resource ResL ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResF");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Cardolan and hidden_resource ResH ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Arthedain and hidden_resource ResE or hidden_resource ResG ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Angmar and hidden_resource ResF or hidden_resource ResJ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Enedwaith and hidden_resource ResE ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Eregion and hidden_resource ResF or hidden_resource ResI or hidden_resource ResK ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource GondorEast and hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource GondorWest and hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Lindon and hidden_resource ResB or hidden_resource ResE");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Logathavuld and hidden_resource ResC or hidden_resource ResB");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Mirkwood and hidden_resource ResC or hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Mordor and hidden_resource ResF");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Rhun and hidden_resource ResF");   
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Rohan and hidden_resource ResJ or hidden_resource ResA");   
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1009, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Vale and hidden_resource ResB or hidden_resource ResH");   

        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource dorwinion and hidden_resource ResL ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResF");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Cardolan and hidden_resource ResH ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Arthedain and hidden_resource ResE or hidden_resource ResG ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Angmar and hidden_resource ResF or hidden_resource ResJ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Enedwaith and hidden_resource ResE ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Eregion and hidden_resource ResF or hidden_resource ResI or hidden_resource ResK ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource GondorEast and hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource GondorWest and hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Lindon and hidden_resource ResB or hidden_resource ResE");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Logathavuld and hidden_resource ResC or hidden_resource ResB");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Mirkwood and hidden_resource ResC or hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Mordor and hidden_resource ResF");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Rhun and hidden_resource ResF");   
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Rohan and hidden_resource ResJ or hidden_resource ResA");   
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1010, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Vale and hidden_resource ResB or hidden_resource ResH");   

        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource dorwinion and hidden_resource ResL ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Harad and hidden_resource ResA or hidden_resource ResB or hidden_resource ResF");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Cardolan and hidden_resource ResH ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Arthedain and hidden_resource ResE or hidden_resource ResG ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Angmar and hidden_resource ResF or hidden_resource ResJ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Enedwaith and hidden_resource ResE ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Eregion and hidden_resource ResF or hidden_resource ResI or hidden_resource ResK ");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource GondorEast and hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource GondorWest and hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Lindon and hidden_resource ResB or hidden_resource ResE");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Logathavuld and hidden_resource ResC or hidden_resource ResB");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Mirkwood and hidden_resource ResC or hidden_resource ResL");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Mordor and hidden_resource ResF");    
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Rhun and hidden_resource ResF");   
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Rohan and hidden_resource ResJ or hidden_resource ResA");   
        EDB.addBuildingPool(temple_dark_academicBuild, 2, 1011, 1.0, 0.04, 2.0, 1.0, "factions { russia, } and event_counter adunaim_mordor_allied 1 and region_religion kings 75 and hidden_resource Vale and hidden_resource ResB or hidden_resource ResH");   

    end
     ----------------------------------------------- ORTHODOX TEMPLE BUILDINGS---------------------------------------------------
	
	    local temple_orthodoxBuild = EDB.getBuildingByName("temple_orthodox");
    if temple_orthodoxBuild then
       --temple_orthodox level 1
       --temple_orthodox level 2        

       --temple_orthodox level 3
       --temple_orthodox level 4
        EDB.addBuildingPool(temple_orthodoxBuild, 3, 1058, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
       --temple_orthodox level 5
        EDB.addBuildingPool(temple_orthodoxBuild, 4, 1054, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_orthodoxBuild, 4, 1055, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_orthodoxBuild, 4, 1056, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_orthodoxBuild, 4, 1057, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_orthodoxBuild, 4, 1058, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");

    end
     ----------------------------------------------- CASTLE ORTHODOX TEMPLE BUILDINGS---------------------------------------------------
	
	    local temple_c_orthodoxBuild = EDB.getBuildingByName("temple_c_orthodox");
    if temple_c_orthodoxBuild then
       --temple_c_orthodox level 1
       --temple_c_orthodox level 2        
       --temple_c_orthodox level 3
       --temple_c_orthodox level 4
        EDB.addBuildingPool(temple_c_orthodoxBuild, 3, 1058, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
       --temple_c_orthodox level 5
        EDB.addBuildingPool(temple_c_orthodoxBuild, 4, 1054, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_c_orthodoxBuild, 4, 1055, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_c_orthodoxBuild, 4, 1056, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_c_orthodoxBuild, 4, 1057, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
        EDB.addBuildingPool(temple_c_orthodoxBuild, 3, 1058, 1.0, 0.05, 1.0, 0.0, "factions { normans, } ");
    end	
     -----------------------------------------------TOWN HALL RECRUITMENT BUILDINGS---------------------------------------------------

     -----------------------------------------------CITY HALL RECRUITMENT BUILDINGS---------------------------------------------------
	local city_hallBuild = EDB.getBuildingByName("city_hall");
    if city_hallBuild then
       --city_hall level 1   
	    EDB.addBuildingPool(city_hallBuild, 0, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 0, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	   --city_hall level 2 
	    EDB.addBuildingPool(city_hallBuild, 1, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 1, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	   --city_hall level 3
	    EDB.addBuildingPool(city_hallBuild, 2, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 2, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	   --city_hall level 4
	    EDB.addBuildingPool(city_hallBuild, 3, 1059, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1060, 1.0, 0.12, 1.0, 0.0, "factions { russia, } and region_religion kings 5 and hidden_resource coast ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1061, 1.0, 0.12, 1.0, 0.0, "factions { spain, } and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and not event_counter civil_war 1 and region_religion orthodox 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1069, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1070, 1.0, 0.1, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1071, 1.0, 0.12, 1.0, 0.0, "factions { khand, } and event_counter civil_war 1 and region_religion nomadic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1065, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1066, 1.0, 0.15, 1.0, 0.0, "factions { poland, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1067, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1068, 1.0, 0.15, 1.0, 0.0, "factions { hre, } and region_religion catholic 15 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(city_hallBuild, 3, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
    end
     -----------------------------------------------CASTLE HALL RECRUITMENT BUILDINGS---------------------------------------------------
	local castle_hallBuild = EDB.getBuildingByName("castle_hall");
    if castle_hallBuild then
       --castle_hall level 1 
	    EDB.addBuildingPool(castle_hallBuild, 0, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 0, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 0, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 0, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	   --castle_hall level 2 
	    EDB.addBuildingPool(castle_hallBuild, 1, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 1, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 1, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 1, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	   --castle_hall level 3
	    EDB.addBuildingPool(castle_hallBuild, 2, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 2, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 2, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 2, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	   --castle_hall level 4
	    EDB.addBuildingPool(castle_hallBuild, 3, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 3, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Vale and hidden_resource ResM and event_counter snaga_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 3, 1067, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
	    EDB.addBuildingPool(castle_hallBuild, 3, 1068, 1.0, 0.045, 2.0, 0.0, "factions { hre, } and hidden_resource Eregion and hidden_resource ResI and event_counter moria_gundabad 1 ");        
    end

     -----------------------------------------------UNIQUE RECRUITMENT BUILDINGS---------------------------------------------------
	 ----------------------------------------------Mordor Tribute Camp-----------------------------------------------------------------
	local mordor_tribute_campBuild = EDB.getBuildingByName("mordor_tribute_camp");
    if mordor_tribute_campBuild then
       --mordor_tribute_camp level 1      
	     EDB.addBuildingPool(mordor_tribute_campBuild, 0, 1071, 1.0, 0.15, 2.0, 0.0, "factions { england, } and event_counter khand_is_allied 1 ");    
	   --mordor_tribute_camp level 2 
	     EDB.addBuildingPool(mordor_tribute_campBuild, 1, 1071, 1.0, 0.15, 2.0, 0.0, "factions { england, } and event_counter khand_is_allied 1 ");    

    end	 
   	 ----------------------------------------------Teleri Barracks-----------------------------------------------------------------
	local teleri_barracksBuild = EDB.getBuildingByName("teleri_barracks");
    if teleri_barracksBuild then
       --teleri_barracks level 1 
       --teleri_barracks level 2 
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1106, 1.0, 0.055, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1107, 1.0, 0.055, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1108, 1.0, 0.055, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1109, 1.0, 0.055, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1110, 1.0, 0.055, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1111, 1.0, 0.055, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1112, 1.0, 0.065, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1083, 1.0, 0.045, 1.0, 1.0, "factions { denmark, } and region_religion elven 70 and hidden_resource Lindon and hidden_resource ResE ");  
       EDB.addBuildingPool(teleri_barracksBuild, 1, 1113, 1.0, 0.045, 1.0, 1.0, "factions { denmark, } and region_religion elven 70 and hidden_resource Lindon and hidden_resource ResE ");  

    end
   	 ----------------------------------------------Teleri Castle Barracks-----------------------------------------------------------------
    local c_teleri_barracksBuild = EDB.getBuildingByName("c_teleri_barracks");
    if c_teleri_barracksBuild then
      --c_teleri_barracks level 1 
      --c_teleri_barracks level 2 
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1106, 1.0, 0.06, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1107, 1.0, 0.06, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1108, 1.0, 0.06, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  "); 
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1109, 1.0, 0.06, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");   
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1110, 1.0, 0.06, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1111, 1.0, 0.06, 1.0, 1.0, "factions { denmark, } and region_religion elven 50  ");    
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1112, 1.0, 0.070, 1.0, 1.0, "factions { denmark, } and region_religion elven 50.  ");    
      EDB.addBuildingPool(teleri_barracksBuild, 1, 1083, 1.0, 0.045, 1.0, 1.0, "factions { denmark, } and region_religion elven 70 and hidden_resource Lindon and hidden_resource ResE ");  
      EDB.addBuildingPool(c_teleri_barracksBuild, 1, 1113, 1.0, 0.045, 1.0, 1.0, "factions { denmark, } and region_religion elven 70 and hidden_resource Lindon and hidden_resource ResE ");    
  
    end
	 ----------------------------------------------Noldor Barracks-----------------------------------------------------------------
	local noldor_barracksBuild = EDB.getBuildingByName("noldor_barracks");
    if noldor_barracksBuild then
       --noldor_barracks level 1 
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1072, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1073, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1074, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1075, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1076, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1077, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1078, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1079, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1099, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1100, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1101, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1102, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");  
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1103, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");    	   
       EDB.addBuildingPool(noldor_barracksBuild, 0, 1104, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");    	   
	   --noldor_barracks level 2 
	     EDB.addBuildingPool(noldor_barracksBuild, 1, 1047, 1.0, 0.045, 1.0, 1.0, "factions { saxons, } and region_religion elven 80 and event_counter imladris_controlled 1 and event_counter jewel_guild_rebuilt 1 and hidden_resource Lindon and hidden_resource ResE ");    
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1099, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1100, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1101, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1102, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");  
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1103, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");    	   
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1104, 1.0, 0.065, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");    	   
         EDB.addBuildingPool(noldor_barracksBuild, 1, 1105, 1.0, 0.055, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");    	   

    end
	----------------------------------------------Noldor Castle Barracks-----------------------------------------------------------------
	local noldor_barracks_castleBuild = EDB.getBuildingByName("noldor_barracks_castle");
    if noldor_barracks_castleBuild then
       --noldor_barracks_castle level 1   
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1072, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1073, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1074, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1075, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1076, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1077, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1078, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");    
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1079, 1.0, 0.045, 1.0, 1.0, "factions { egypt, } and region_religion elven 15  ");  
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1099, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1100, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1101, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1102, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");   
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1103, 1.0, 0.070, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");   	   
       EDB.addBuildingPool(noldor_barracks_castleBuild, 0, 1104, 1.0, 0.070, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");   	   
	   --noldor_barracks_castle level 2 
	     EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1047, 1.0, 0.055, 1.0, 1.0, "factions { saxons, } and region_religion elven 75 and event_counter imladris_controlled 1 and event_counter jewel_guild_rebuilt 1 and hidden_resource Lindon and hidden_resource ResE ");    
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1099, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1100, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1101, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");    	   
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1102, 1.0, 0.075, 1.0, 1.0, "factions { saxons, } and region_religion elven 33  ");   
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1103, 1.0, 0.070, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");   	   
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1104, 1.0, 0.070, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");   	   
         EDB.addBuildingPool(noldor_barracks_castleBuild, 1, 1105, 1.0, 0.055, 1.0, 1.0, "factions { saxons, } and region_religion elven 50  ");    	   

        end
    -----------------------------------------------MILITARY ACADAMEY (WAYSTATION UNITS)-------------------------------------------

    local professional_militaryBuild = EDB.getBuildingByName("professional_military");
    if professional_militaryBuild then
       --professional_military level 1        
        EDB.addBuildingPool(professional_militaryBuild, 0, 1002, 0,  0.1,  0.999,  0, "factions { gundabad, } and not hidden_resource avengers ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1003, 0,  0.1,  0.999,  0, "factions { gundabad, } and not hidden_resource avengers ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1004, 0,  0.1,  0.999,  0, "factions { hungary, } and not hidden_resource Lindon ");    
        EDB.addBuildingPool(professional_militaryBuild, 0, 1005, 0,  0.1,  0.999,  0, "factions { france, } and not hidden_resource trolls ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1006, 0,  0.1,  0.999,  0, "factions { france, }  and not hidden_resource mountains ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1007, 0,  0.1,  0.999,  0, "factions { mongols, }  and not hidden_resource forest ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1009, 0,  0.1,  0.999,  0, "factions { russia, } and not hidden_resource Arthedain and not hidden_resource Cardolan and not hidden_resource Harad ");    
        EDB.addBuildingPool(professional_militaryBuild, 0, 1010, 0,  0.1,  0.999,  0, "factions { russia, } and not hidden_resource Arthedain and not hidden_resource Cardolan and not hidden_resource Harad ");    
        EDB.addBuildingPool(professional_militaryBuild, 0, 1011, 0,  0.1,  0.999,  0, "factions { russia, } and not hidden_resource Arthedain and not hidden_resource Cardolan and not hidden_resource Harad ");    
        EDB.addBuildingPool(professional_militaryBuild, 0, 1012, 0,  0.1,  0.999,  0, "factions { sicily, denmark, turks, } and not hidden_resource GondorEast ");   
        EDB.addBuildingPool(professional_militaryBuild, 0, 1013, 0,  0.1,  0.999,  0, "factions { sicily, } and not hidden_resource fiefdom_barracks ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1014, 0,  0.1,  0.999,  0, "factions { poland, } and not hidden_resource trolls ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1031, 0,  0.1,  0.999,  0, "factions { gundabad, } and not hidden_resource trolls ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1035, 0,  0.1,  0.999,  0, "factions { france, } and not hidden_resource trolls ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1015, 0,  0.1,  0.999,  0, "factions { hre, } and not hidden_resource trolls ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1039, 0,  0.1,  0.999,  0, "factions { venice, } ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1040, 0,  0.1,  0.999,  0, "factions { moors, }  and not hidden_resource mountains ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1041, 0,  0.1,  0.999,  0, "factions { moors, }  and not hidden_resource mountains ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1044, 0,  0.1,  0.999,  0, "factions { norway, }  and not hidden_resource mountains ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1046, 0,  0.1,  0.999,  0, "factions { milan, }  and not hidden_resource Rohan ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1047, 0,  0.1,  0.999,  0, "factions { saxons, }  and not hidden_resource Lindon ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1048, 0,  0.1,  0.999,  0, "factions { timurids, }  and not hidden_resource Vale ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1061, 0,  0.1,  0.999,  0, "factions { turks, }  and not hidden_resource Harad ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1069, 0,  0.1,  0.999,  0, "factions { spain, venice, turks, }  and not hidden_resource Mordor and not hidden_resource Rhun ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1070, 0,  0.1,  0.999,  0, "factions { spain, venice, }  and not hidden_resource Mordor and not hidden_resource Rhun ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1071, 0,  0.1,  0.999,  0, "factions { spain, venice, }  and not hidden_resource Mordor and not hidden_resource Rhun ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1071, 0,  0.1,  0.999,  0, "factions { england, }  and event_counter khand_is_allied 1 and not hidden_resource tribute_camp ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1083, 0,  0.1,  0.999,  0, "factions { denmark, } and not hidden_resource Lindon ");
        EDB.addBuildingPool(professional_militaryBuild, 0, 1113, 0,  0.1,  0.999,  0, "factions { denmark, }  and not hidden_resource Lindon ");

    end
    --------------------------------------------------------LANDMARKS-------------------------------------------------------------

    local hinterland_unique1Build = EDB.getBuildingByName("hinterland_unique1");
    if hinterland_unique1Build then
       --hinterland_unique1 level 1            
        EDB.addBuildingPool(hinterland_unique1Build, 0, 1012, 1.0, 0.07, 1.0, 0.0, "factions { sicily, denmark, turks, } and region_religion islam 75 ");    
    end
	
	local hinterland_unique2Build = EDB.getBuildingByName("hinterland_unique2");
    if hinterland_unique2Build then
       --hinterland_unique2 level 1            
        EDB.addBuildingPool(hinterland_unique2Build, 0, 1046, 1.0, 0.08, 2.0, 0.0, "factions { milan, } and region_religion northmen 80 ");    
    end
        
    ------------------------------------------------------BELERIAND RUINS CHAIN---------------------------------------------------
    local hinterland_beleriand_ruinsBuild = EDB.getBuildingByName("hinterland_beleriand_ruins");
    if hinterland_beleriand_ruinsBuild then
       --beleriand_ruins level 1
       --beleriand_ruins level 2
       --beleriand_ruins level 3        
        EDB.addBuildingPool(hinterland_beleriand_ruinsBuild, 2, 1004, 2.0, 0.05, 3.0, 0.0, "factions { hungary, } ");
    end
	------------------------------------------------------HOBBIT CITY CHAIN--------------------------------------------------
    local hinterland_unique4Build = EDB.getBuildingByName("hinterland_unique4");
    if hinterland_unique4Build then
       --hinterland_unique4 level 1
       --hinterland_unique4 level 2
       --hinterland_unique4 level 3 
	   --hinterland_unique4 level 4  
	   --hinterland_unique4 level 5 
        EDB.addBuildingPool(hinterland_unique4Build, 4, 1051, 1.0, 0.05, 1.0, 0.0, "factions { normans, turks, } ");
	   --hinterland_unique4 level 6  
	   --hinterland_unique4 level 7  
	   --hinterland_unique4 level 8  
	   --hinterland_unique4 level 9         
    end
	
end

return eur_EOP_units
  