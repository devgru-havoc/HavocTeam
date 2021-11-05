[
    QGVAR(enabled),
    "CHECKBOX",
    [ELSTRING(common,Enabled), ELSTRING(common,Enabled_Description)],
    ADDON,
    false,
    1,
    {},
    true
] call CBA_fnc_addSetting;

[
    QGVAR(babel),
    "CHECKBOX",
    [LSTRING(Babel), LSTRING(Babel_Description)],
    ADDON,
    false,
    1,
    {},
    true
] call CBA_fnc_addSetting;

[
    QGVAR(startBppVolume),
    "LIST",
    [LSTRING(StartBppVolume), LSTRING(StartBppVolume_Description)],
    ADDON,
    [
        [0, 1, 2, 3, 4],
        [LSTRING(Whisper), LSTRING(Quiet), LSTRING(Normal), LSTRING(Loud), LSTRING(Shout)],
        DEFAULT_BPP_VOLUME
    ],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(startLeaderVolume),
    "LIST",
    [LSTRING(StartLeaderVolume), LSTRING(StartLeaderVolume_Description)],
    ADDON,
    [
        [0, 1, 2, 3, 4],
        [LSTRING(Whisper), LSTRING(Quiet), LSTRING(Normal), LSTRING(Loud), LSTRING(Shout)],
        DEFAULT_LEADER_VOLUME
    ],
    1
] call CBA_fnc_addSetting;

[
    QGVAR(perSideRadios),
    "CHECKBOX",
    [LSTRING(PerSideRadios), LSTRING(PerSideRadios_Description)],
    ADDON,
    false,
    1,
    {},
    true
] call CBA_fnc_addSetting;

[
    QGVAR(perSideChannelNames),
    "CHECKBOX",
    [LSTRING(PerSideChannelNames), LSTRING(PerSideChannelNames_Description)],
    ADDON,
    false,
    1,
    {},
    true
] call CBA_fnc_addSetting;

if (EGVAR(common,aceArsenal)) then {
    [
        QGVAR(addArsenalCategory),
        "CHECKBOX",
        LLSTRING(AddArsenalCategory),
        ADDON,
        true,
        false,
        {},
        true
    ] call CBA_fnc_addSetting;
};

#include "initSettingsChannelNames.sqf"
