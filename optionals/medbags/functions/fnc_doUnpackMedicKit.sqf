#include "..\script_component.hpp"    
/*
 * ARMA EXTENDED ENVIRONMENT
 * \havoc_medical\supplies\functions\fn_doUnpackMedicKit.sqf
 * by Ojemineh
 * 
 * unpack medical supplies
 * 
 * Arguments:
 * 0: unit - <OBJECT>
 * 
 * Return:
 * nothing
 * 
 * Example:
 * [player] call HAVOC_medical_supplies_fnc_doUnpackMedicKit;
 * 
 */

// -------------------------------------------------------------------------------------------------

private ["_unit"];

_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------------------------------------

if (isNull _unit) exitWith {};

// -------------------------------------------------------------------------------------------------

[_unit] spawn {
    
    params ["_unit"];
    
    _unit playAction "Gear";
    
    if (vehicle _unit != _unit) then {
        playSound QGVAR(Medical_MedicKit_Open_1);
    } else {
        private _pitch = random [0.6, 1, 1.4];
        [_unit, QGVAR(Medical_MedicKit_Open_1), [], 30, 1000, -1, _pitch] call HAVOC_fnc_play3dSound;
    };
    
    HAVOC_MEDICAL_SUPPLIES_UNPACK_SUCCESS = false;
    HAVOC_MEDICAL_SUPPLIES_UNPACK_FAILURE = false;
    
    [
        2,
        [],
        { HAVOC_MEDICAL_SUPPLIES_UNPACK_SUCCESS = true; },
        { HAVOC_MEDICAL_SUPPLIES_UNPACK_FAILURE = true; },
        localize "Unpack Mead Kit....",

        {true},
        ["isNotInside", "isNotSitting", "isNotSwimming"]
    ] call ACE_common_fnc_progressBar;
    
    waitUntil {if ((HAVOC_MEDICAL_SUPPLIES_UNPACK_SUCCESS) || (HAVOC_MEDICAL_SUPPLIES_UNPACK_FAILURE)) exitWith {true}; false};
    
    if (HAVOC_MEDICAL_SUPPLIES_UNPACK_SUCCESS) exitWith {
        
        _unit removeItem "havoc_medbags_MedicKit";
        
        private _order = [3,1,2];
        private _overflow = false;
        
        [_unit, "ACE_fieldDressing", 18, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_elasticBandage", 14, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_packingBandage", 14, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_quikClot", 14, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_salineIV_500", 08, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_epinephrine", 10, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_morphine", 10, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_tourniquet", 08, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "kat_Painkiller", 06, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_adenosine", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_atropine", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "kat_chestSeal", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "kat_larynx", 06, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "kat_guedel", 06, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_splint", 08, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "kat_aatKit", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "KAT_Empty_bloodIV_500", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_fieldDressing", 06, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "kat_Painkiller", 02, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_tourniquet", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "ACE_EarPlugs", 01, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_medical_shears", 01, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_medical_cascard", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_medical_nargloves", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_medical_NDC", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_medical_notes", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_Apap", 04, _order, _overflow] call havoc_fnc_addItem;
        [_unit, "havoc_tetra", 04, _order, _overflow] call havoc_fnc_addItem;
    
        _unit playActionNow "Stand";
        
    };
    
    if (HAVOC_MEDICAL_SUPPLIES_UNPACK_FAILURE) exitWith {
        
        [_unit, QGVAR(Medical_MedicKit_Open_1)] call HAVOC_fnc_stop3dSound;
        
        _unit playActionNow "Stand";
        
    };
    
};
