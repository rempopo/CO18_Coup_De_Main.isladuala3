// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",10],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",10],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ZSN_Whistle",1]
// ****************

kit_port_pl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll2_OD","cwr3_i_vest_58webbing","usm_pack_st138_prc77","cwr3_i_headgear_beret_02_km",""],
	["<PRIMARY WEAPON >>  ","cwr3_smg_uzi","CUP_30Rnd_9x19_UZI",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_port_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll2_OD","cwr3_i_vest_58webbing","usm_pack_st138_prc77","cwr3_i_headgear_beret_02_km",""],
	["<PRIMARY WEAPON >>  ","cwr3_smg_uzi","CUP_30Rnd_9x19_UZI",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",3],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_port_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll2_OD","cwr3_i_vest_58webbing","","cwr3_b_headgear_m1_olive",""],
	["<PRIMARY WEAPON >>  ","cwr3_smg_uzi","CUP_30Rnd_9x19_UZI",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["SmokeShellBlue",2],["SmokeShellGreen",2],["SmokeShell",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_port_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll2_OD","cwr3_i_vest_58webbing","cwr3_i_backpack","usm_bdu_boonie_portliz",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["HandGrenade",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_port_mg = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll2_OD","cwr3_i_vest_58webbing","usm_pack_762x51_ammobelts","usm_bdu_boonie_portliz",""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_MG3","CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1],["PRIMARY MAG",1]]]
];
kit_port_amg = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_roll2_OD","cwr3_i_vest_58webbing","usm_pack_762x51_ammobelts","usm_bdu_boonie_portliz",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris","CUP_20Rnd_762x51_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","dzn_MG_Tripod_Universal_Carry","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",3],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2]]]
];
kit_port_cargo = [
	[],
	[["CUP_20Rnd_762x51_G3",30],["HandGrenade",20],["CUP_30Rnd_9x19_UZI",30],["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",20],["SmokeShellGreen",20],["SmokeShellRed",20],["SmokeShellYellow",10],["SmokeShellBlue",10],["SmokeShell",20]],
	[["ACE_elasticBandage",35],["ACE_fieldDressing",35]],
	[]
];

//FRELIMO
#define FRELIMO_WEP ["CUP_arifle_AK47_Early","CUP_SKS","CUP_arifle_Sa58P","CUP_srifle_Mosin_Nagant"]
#define FRELIMO_MAG ["CUP_30Rnd_762x39_AK47_M","CUP_10Rnd_762x39_SKS_M","CUP_30Rnd_Sa58_M","CUP_5Rnd_762x54_Mosin_M"]
#define FRELIMO_HEAD ["H_Booniehat_oli","cwr3_i_headgear_cap_p60","CUP_H_US_patrol_cap_OD"]
kit_frelimo_random = [
	"kit_frelimo_r"
	,"kit_frelimo_ar"
	,"kit_frelimo_at"
	,"kit_frelimo_r"
	,"kit_frelimo_r"
	,"kit_frelimo_r"
	,"kit_frelimo_r"
];
kit_frelimo_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","cwr3_i_vest_chicom","",FRELIMO_HEAD,""],
	["<PRIMARY WEAPON >>  ",FRELIMO_WEP,FRELIMO_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_frelimo_ar = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","cwr3_i_vest_lbv_mg_olive","",FRELIMO_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_frelimo_at = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","cwr3_i_vest_chicom","CUP_B_SLA_Medicbag",FRELIMO_HEAD,""],
	["<PRIMARY WEAPON >>  ",FRELIMO_WEP,FRELIMO_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];