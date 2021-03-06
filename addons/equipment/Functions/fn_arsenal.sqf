/*
Arguments:
0: items only misc items <ARRAY of STRING>
1: tooltip <STRING> (Optional)
2: picture path <STRING> (Optional)
3: override a spezific button (0-9) <NUMBER> (Optional)

Return Value:
successful: number of the slot; error: -1 <NUMBER>

Example:

call havoc_fnc_arsenal;

Public: Yes
*/

[
    ["uh60_jvmf_tablet","tun_tablet","sps_black_hornet_01_Static_F","ITC_EPLRS","ACE_DAGR","Gren_Loc_SAT","Gren_ric_SAT","ITC_ROVER_SIR","ACRE_PRC117F","ACRE_PRC152","ACRE_PRC148","TFAR_anprc152","TFAR_anprc154","ItemGPS","ALIVE_Tablet","TFAR_rf7800str","TFAR_anprc148jem","ItemAndroid","ACE_microDAGR","ACE_DAGR","ItemcTabHCam","ItemMicroDAGR","ItemcTab","ACE_ATragMX","ACE_DAGR","ACE_HuntIR_monitor","ACE_Kestrel4500","ACE_microDAGR", "tfw_rf3080Item","tfw_blade","tfw_whip","tfw_dd"],
    "Tech",
    "\a3\ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa"
] call ace_arsenal_fnc_addRightPanelButton;

[
    ["gren_atropine","kat_aatKit","havoc_medical_Apap","havoc_medical_tetra","ACE_tourniquet","ACE_splint","havoc_medical_NDC","havoc_medical_shears","havoc_tetra","havoc_medical_cascard","havoc_Apap","havoc_medical_nargloves","havoc_medical_notes","Attachable_Helistretcher""kat_aatKit","kat_accuvac","kat_X_AED","kat_AED","kat_crossPanel","kat_bloodIV_O","kat_bloodIV_A","kat_bloodIV_AB","kat_bloodIV_B","kat_bloodIV_O_250","kat_bloodIV_A_250","kat_bloodIV_AB_250","kat_bloodIV_B_250","kat_bloodIV_O_500","kat_bloodIV_A_500","kat_bloodIV_AB_500","kat_bloodIV_B_500","KAT_Empty_bloodIV_250","KAT_Empty_bloodIV_500","kat_stethoscope","kat_chestSeal","kat_guedel","kat_larynx","kat_Painkiller","kat_Pulseoximeter","kat_stretcherBag","Attachable_Helistretcher","ACE_adenosine","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_bodyBag","ACE_epinephrine","ACE_morphine","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_personalAidKit","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_surgicalKit","ACE_tourniquet","ACE_splint","havoc_medical_naloxone","havoc_medical_morphine","havoc_medical_ketamine","havoc_medical_fentanyl","havoc_medical_epinephrine","havoc_medical_VPN","havoc_medbags_MedicKit","MRH_FoldedMedicalTent","havoc_medbags_DrugKit","havoc_medbags_FirstAid","vtx_stretcher_item"],
    "Medical",
    "\z\ace\addons\medical_gui\data\categories\medication.paa"
] call ace_arsenal_fnc_addRightPanelButton;

[
    ["ACE_IR_Strobe_Item","ACE_Chemlight_Shield","KNB_PanelGreen","KNB_PanelRed","KNB_PanelYellow","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","taro_vs17_panel"],
    "Marking",
    "\z\ace\addons\arsenal\data\iconCustom.paa"
] call ace_arsenal_fnc_addRightPanelButton;

[
    ["ALiVE_Humrat","ALiVE_Waterbottle","ACE_Can_Spirit","ACE_Can_Franta","ACE_MRE_SteakVegetables","ACE_MRE_MeatballsPasta","ACE_MRE_LambCurry","ACE_MRE_CreamTomatoSoup","ACE_MRE_CreamChickenSoup","ACE_MRE_ChickenHerbDumplings","ACE_MRE_ChickenTikkaMasala","ACE_MRE_BeefStew","ACE_Can_RedGull","ACE_WaterBottle","ACE_Humanitarian_Ration"],
    "Rations",
    "\a3\ui_f\data\Map\MapControl\tourism_CA.paa"
] call ace_arsenal_fnc_addRightPanelButton;

[
    ["ACE_wirecutter","ToolKit","MineDetector","ACE_Clacker","ACE_M26_Clacker","ACE_EntrenchingTool","ACE_Fortify"],
    "Engineering",
    "\z\ace\addons\minedetector\ui\icon_mineDetector.paa"
] call ace_arsenal_fnc_addRightPanelButton;

/* [
    ["USP_BAT_PVS31","USP_BOLTCUTTER","USP_CARABINER","USP_ROAM2","USP_CROWBAR","USP_CRYE_KNEEPAD","USP_FAST_COVER","USP_FAST_COVER_CBR","USP_FAST_COVER_MC","USP_FAST_COVER_RGR","USP_EARMUFF_GRN","USP_EARMUFF_TAN","USP_FACESHIELD","USP_FACESHIELD_GRN","USP_WRISTWATCH","USP_GOGGLE_COVER","USP_GOGGLE_COVER_FG","USP_GOGGLE_COVER_MC","USP_GUNSIGHT","USP_GUNSIGHT_MC","USP_GUNSIGHT_TAN","USP_COUNTERWEIGHT_CBR","USP_COUNTERWEIGHT_MC","USP_COUNTERWEIGHT_RGR","USP_ACC_GPNVG18","USP_ACC_PVS14","USP_ACC_PVS15","USP_ACC_PVS31","USP_MOHOC","USP_CHARGE","USP_MS2000","USP_MECHANIX","USP_MECHANIX_BLK2","USP_MECHANIX_CBR2","USP_MECHANIX_GRN","USP_MECHANIX_GRY","USP_MECHANIX_MC","USP_NIGHTCAP_CBR","USP_NIGHTCAP_MC","USP_NIGHTCAP_MCA","USP_NIGHTCAP_MCD","USP_NIGHTCAP_MCT","USP_NIGHTCAP_RGR","USP_OVERLORD","USP_OVERLORD_GRN","USP_OVERLORD_MC","USP_OVERLORD_MIX","USP_OVERLORD_TAN","USP_TOMAHAWK","USP_ZIPTIE","USP_SEALSTRIKE","USP_OVERLORD_CBR","USP_NIGHTCAP_MCB","USP_MOHOC_GRN","USP_ACC_GPNVG18_TAN","USP_COUNTERWEIGHT","USP_ACC_NSEAS","USP_FACESHIELD_TAN","USP_GOGGLE_COVER_TAN","USP_MECHANIX_CBR","USP_NIGHTCAP","USP_EARMUFF"],
    "USP",
    "z\havoc\addons\equipment\data\usp_icon.paa"
] call ace_arsenal_fnc_addRightPanelButton;
 */
// [
//     ["ade_item_cylinder_linked_6ltr_300bar_compressedAir","ade_item_cylinder_linked_6ltr_300bar_EAN28","ade_item_cylinder_linked_6ltr_300bar_EAN32","ade_item_cylinder_linked_6ltr_300bar_EAN36","ade_item_cylinder_linked_6ltr_300bar_EAN40","ade_item_cylinder_linked_6ltr_300bar_Heliox12","ade_item_cylinder_linked_6ltr_300bar_Heliox21","ade_item_cylinder_linked_6ltr_300bar_Heliox85","ade_item_cylinder_linked_6ltr_300bar_Tx1070","ade_item_cylinder_linked_6ltr_300bar_Tx1265","ade_item_cylinder_linked_6ltr_300bar_Tx1555","ade_item_cylinder_linked_6ltr_300bar_Tx1845","ade_item_cylinder_linked_6ltr_300bar_Tx2135","ade_item_cylinder_single_6ltr_300bar_compressedAir","ade_item_cylinder_single_6ltr_300bar_EAN28","ade_item_cylinder_single_6ltr_300bar_EAN36","ade_item_cylinder_single_6ltr_300bar_EAN32","ade_item_cylinder_single_6ltr_300bar_EAN40","ade_item_cylinder_single_6ltr_300bar_Heliox12","ade_item_cylinder_single_6ltr_300bar_Heliox21","ade_item_cylinder_single_6ltr_300bar_Heliox85","ade_item_cylinder_single_6ltr_300bar_Tx1070","ade_item_cylinder_single_6ltr_300bar_Tx1265","ade_item_cylinder_single_6ltr_300bar_Tx1555","ade_item_cylinder_single_6ltr_300bar_Tx1845","ade_item_cylinder_single_6ltr_300bar_Tx2135"],
//     "Diving",
//     "a3\ui_f\data\GUI\Cfg\Hints\BasicDive_ca.paa"
// ] call ace_arsenal_fnc_addRightPanelButton;

