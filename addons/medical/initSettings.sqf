[
    "HAVOC_medical_persistantRevive",
    "CHECKBOX",
    ["Enable Continuous", "Enable a persistant death timer, will keep track of how long a player is in Cardiac arrest in total."],
    ["HAVOC - Medical", "Revive"],
    true,
    true
] call CBA_fnc_addSetting;

[
    "HAVOC_medical_persistantReviveTimer",
    "TIME",
    ["Revive Timer", "Length for the persistant death timer (recomend between 1 -> 3 times the ACE CA timer). To only use this, set ACE's CA timer as higher than this."],
    ["HAVOC - Medical", "Revive"],
    [1, 3600, 240],
    true
] call CBA_fnc_addSetting;