/*
Function: havoc_fnc_Patches

Description:
 Apply Section Patches to Players/Vehicles

Arguments:
 _unit - Player the Patch is applied to. <OBJECT>
 _Section - The Section the Player is in. <STRING>

Examples:
 (begin example)
  [this, "1Section"] call havoc_fnc_Patches;
 (end)

Author:
 MitchJC
*/

params [
 "_unit",
 ["_Section", "Support"]
];
private ["_PatchClass"];
call {
    if (_Section == "Command") exitwith {_PatchClass = "cmdp";};
    if (_Section == "Black") exitwith {_PatchClass = "blackp";};
    if (_Section == "Red") exitwith {_PatchClass = "redp";};
    if (_Section == "Blue") exitwith {_PatchClass = "bluep";};
    if (_Section == "Silver") exitwith {_PatchClass = "silverp";};
    if (_Section == "Gold") exitwith {_PatchClass = "goldp";};
    if (_Section == "Green") exitwith {_PatchClass = "greenp";};
    if (_Section == "Grey") exitwith {_PatchClass = "grayp";};
    _PatchClass = "greenp";
};

// ===== Apply the Patch to player. 

[BIS_fnc_setUnitInsignia, [_unit,_PatchClass], 5] call CBA_fnc_waitAndExecute;

// ======= When Player Repsawns, apply the patch they had when they died.
_unit addEventHandler ["Respawn", {
    params ["_unit", "_corpse"];
    _OldPatch = _corpse call BIS_fnc_getUnitInsignia;

    [_unit, ""] call BIS_fnc_setUnitInsignia;
    [BIS_fnc_setUnitInsignia, [_unit,_OldPatch], 5] call CBA_fnc_waitAndExecute;
}];

