#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "havoc_main",
            "ace_hearing",
            "CUP_Creatures_Extra_OpsCore",
            "CUP_Creatures_Military_ACR",
            "CUP_Creatures_Military_BAF",
            "CUP_Creatures_Military_Germany",
            "CUP_Creatures_Military_PMC",
            "CUP_Creatures_Military_USArmy",
            "CUP_Creatures_Military_USMC",
        };
        author = QAUTHOR;
        authors[] = {"TyroneMF"};
        url = URL;
        VERSION_CONFIG;
    };
};

#include "CfgWeapons.hpp"
