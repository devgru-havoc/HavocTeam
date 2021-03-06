#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "havoc_main"
        };
        author = "Havoc";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "ui\RscModal.hpp"
#include "CfgFunctions.hpp"
#include "CfgSounds.hpp"