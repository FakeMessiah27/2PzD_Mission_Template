// Info: German DAK 1942 January Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use FNC_AddItemRandom

/*Loadouts

	//Kompanietrupp
[this,"DAK42Jan_CC"] call FNC_GearScript;		Kompanieführer
[this,"DAK42Jan_C2"] call FNC_GearScript;		Kompanietruppführer

	//Zugtrupp
[this,"DAK42Jan_PC"] call FNC_GearScript;		Zugführer
[this,"DAK42Jan_P2"] call FNC_GearScript;		Zugtruppführer
[this,"DAK42Jan_RTO"] call FNC_GearScript;		Funker
[this,"DAK42Jan_Mess"] call FNC_GearScript;		Melder
[this,"DAK42Jan_MedP"] call FNC_GearScript;		Krankenträger

	//Gruppe
[this,"DAK42Jan_SL"] call FNC_GearScript;		Gruppenführer
[this,"DAK42Jan_S2"] call FNC_GearScript;		Stellvertretender Gruppenführer
[this,"DAK42Jan_S3"] call FNC_GearScript;		Gefreiter
[this,"DAK42Jan_MG"] call FNC_GearScript;		MG-Richtschütze
[this,"DAK42Jan_MGA"] call FNC_GearScript;		MG-Hilfsschütze
[this,"DAK42Jan_MGAB"] call FNC_GearScript;		MG-Munitionsträger
[this,"DAK42Jan_Gren"] call FNC_GearScript;		Grenadier
[this,"DAK42Jan_MedS"] call FNC_GearScript;		Hilfs-Krankenträger
[this,"DAK42Jan_Rif"] call FNC_GearScript;		Gewehrschütze

	//Weapon Truppen
[this,"DAK42Jan_MortSL"] call FNC_GearScript;	Mortar Truppführer
[this,"DAK42Jan_MortG"] call FNC_GearScript;	Mortar Granatwerferschützen
[this,"DAK42Jan_MortA"] call FNC_GearScript;	Mortar Munitionsträger

[this,"DAK42Jan_HMGSL"] call FNC_GearScript;	HMG Truppführer
[this,"DAK42Jan_HMGG"] call FNC_GearScript;		HMG Richtschütze
[this,"DAK42Jan_HMGA"] call FNC_GearScript;		HMG Munitionsträger

	//Tank Crew
[this,"DAK42Jan_VCom"] call FNC_GearScript;		Besatzungsführer
[this,"DAK42Jan_VCrew"] call FNC_GearScript;	Besatzung
*/

//======================== Loadouts ========================

//Company HQ

	//Kompanieführer
	case "DAK42Jan_CC" : {
		[DAK_Uni_O] call FNC_AddItem;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_BP_radio] call FNC_AddItem;
		[DAK_Hat_O] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[53],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[33],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10],
		[//PPK
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
	};

	//Kompanietruppführer
	case "DAK42Jan_C2" : {
		[DAK_Uni_NCO_S_r] call FNC_AddItemRandom;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_Hat_Pith] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[55],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[41],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
	};

//Platoon HQ

	//Zugführer
	case "DAK42Jan_PC" : {
		[DAK_Uni_O] call FNC_AddItem;
		[DAK_Vest_PC] call FNC_AddItem;
		[DAK_Hat_O] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[53],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[33],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10],
		[//PPK
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
	};

	//Zugtruppführer
	case "DAK42Jan_P2" : {
		[DAK_Uni_NCO_S_r] call FNC_AddItemRandom;
		[DAK_Vest_SL] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Funker
	case "DAK42Jan_RTO" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_radio] call FNC_AddItem;
		[DAK_Hat] call FNC_AddItem;
		[GEN_Face_r] call FNC_AddItemRandom;
		_unit removeItem "TFAR_rf7800str";
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_Headset] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
	};

	//Melder
	case "DAK42Jan_Mess" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Krankenträger
	case "DAK42Jan_MedP" : {
		[DAK_Uni_Med] call FNC_AddItem;
		[DAK_Vest_Med] call FNC_AddItem;
		[Ger_BP_Med] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
		Ger_medicP_equipment;
	};

//Squad

	//Gruppenführer
	case "DAK42Jan_SL" : {
		[DAK_Uni_NCO_J_r] call FNC_AddItemRandom;
		[DAK_Vest_SL] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,6,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Stellvertretender Gruppenführer
	case "DAK42Jan_S2" : {
		[DAK_Uni_NCO_J_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItemRandom;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Gefreiter
	case "DAK42Jan_S3" : {
		[DAK_Uni_NCO_J_r] call FNC_AddItemRandom;
		[DAK_Vest_MP40] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,6,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//MG-Richtschütze
	case "DAK42Jan_MG" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_MG] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[55],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[41],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[Ger_Weap_MG34] call FNC_AddItem;
		[Ger_Mag_MG_50,4,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

	//MG-Hilfsschütze
	case "DAK42Jan_MGA" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_BinoG] call FNC_AddItem;
		[GEN_ace_sparebarrel] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,3] call FNC_AddItem;
	};

	//MG-Munitionsträger
	case "DAK42Jan_MGAB" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[Ger_BP_MG_B] call FNC_AddItem;
		_unit removeItemFromBackpack "fow_50Rnd_792x57";
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_50,5] call FNC_AddItem;
	};

	//Grenadier
	case "DAK42Jan_Gren" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Weap_K98_RG] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		[Ger_Mag_RGrn_HE,4] call FNC_AddItem;
		[Ger_Mag_RGrn_ATS,4] call FNC_AddItem;
	};

	//Hilfs-Krankenträger
	case "DAK42Jan_MedS" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[Ger_BP_Med] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_medicS_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

	//Gewehrschütze
	case "DAK42Jan_Rif" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[DAK_BP_r] call FNC_AddItemRandom;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Gren_Frag_SC,1] call FNC_AddItem;
		[Ger_Mag_MG_50,1] call FNC_AddItem;
		[GEN_Gren_Frag_P,1] call FNC_AddItem;
	};

//Weapon Truppen

	//Mortar Team
	//Mortar Truppführer
	case "DAK42Jan_MortSL" : {
		[DAK_Uni_NCO_J_r] call FNC_AddItemRandom;
		[DAK_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[55],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[41],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Ger_Weap_MortB,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call FNC_AddItem;
	};

	//Mortar Granatwerferschützen
	case "DAK42Jan_MortG" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_VCrew] call FNC_AddItemRandom;
		[Ger_BP_T34] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[55],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[41],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Launcher
		[Ger_Weap_MortT,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
	};

	//Mortar Munitionsträger
	case "DAK42Jan_MortA" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItemRandom;
		[Ger_BP_T34] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		[GEN_ace_maptools,1] call FNC_AddItem;
		[GEN_ace_rangetable,1] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_Mort_HE,4] call FNC_AddItem;
	};

	//HMG Team
	//HMG Truppführer
	case "DAK42Jan_HMGSL" : {
		[DAK_Uni_NCO_J_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		[GEN_ace_sparebarrel] call FNC_AddItem;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12] call FNC_AddItem;
		
		//Launcher
		[Ger_Weap_MG_T,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,2] call FNC_AddItem;
	};

	//HMG Richtschütze
	case "DAK42Jan_HMGG" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_MG] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[55],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[41],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Primary Weapon
		[Ger_Mag_MG_250,1] call FNC_AddItem;
		[Ger_Weap_MG34] call FNC_AddItem;
		[Ger_Mag_MG_250,1] call FNC_AddItem;
		[Ger_Mag_MG_150,1] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,2] call FNC_AddItem;
	};

	//HMG Munitionsträger
	case "DAK42Jan_HMGA" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_K98] call FNC_AddItem;
		[Ger_BP_T34] call FNC_AddItem;
		[DAK_Helmet_r] call FNC_AddItemRandom;
		[GEN_Face_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		//Primary Weapon
		[Ger_Mag_K98,1] call FNC_AddItem;
		[Ger_Weap_K98] call FNC_AddItem;
		[Ger_Mag_K98,12,"vest"] call FNC_AddItem;
		
		//Extra
		[Ger_Mag_MG_250,2] call FNC_AddItem;
		[Ger_Mag_MG_150,1] call FNC_AddItem;
	};

//Tank Crew

	//Besatzungsführer
	case "DAK42Jan_VCom" : {
		[DAK_Uni_NCO_S_r] call FNC_AddItemRandom;
		[DAK_Vest_PC] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[DAK_Hat_Pith] call FNC_AddItem;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		Ger_leader_equipment;
		
		//Primary Weapon
		[Ger_Mag_MP40,1] call FNC_AddItem;
		[Ger_Weap_MP40] call FNC_AddItem;
		[Ger_Mag_MP40,3,"vest"] call FNC_AddItem;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[53],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[33],
		[//PPK
		[Ger_Mag_PPK,1],
		[Ger_Weap_PPK],
		[Ger_Mag_PPK,2]
		],[10],
		[//PPK
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
	};

	//Besatzung
	case "DAK42Jan_VCrew" : {
		[DAK_Uni_Rif_r] call FNC_AddItemRandom;
		[DAK_Vest_VCrew] call FNC_AddItem;
		[Ger_BP_VCrew] call FNC_AddItem;
		[DAK_Hat_Pith] call FNC_AddItem;
		[GEN_Face_Tank_r] call FNC_AddItemRandom;
		
		//Assigned Items
		Ger_default_equipment;
		
		[//Secondary Weapon
		[//P38
		[Ger_Mag_P38,1],
		[Ger_Weap_P38],
		[Ger_Mag_P38,2]
		],[55],
		[//P08
		[Ger_Mag_P08,1],
		[Ger_Weap_P08],
		[Ger_Mag_P08,2]
		],[41],
		[//Radom
		[PHA_Mag_Radom,1],
		[PHA_Weap_Radom],
		[PHA_Mag_Radom,2]
		],[2],
		[//BHP
		[UK_Mag_HiPower,1],
		[UK_Weap_HiPower],
		[UK_Mag_HiPower,2]
		],[2]
		] call FNC_AddItemRandomPercent;
		
		//Extra
		[GEN_Toolkit] call FNC_AddItem;
	};