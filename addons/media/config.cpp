#include "script_component.hpp"

class CfgPatches {
    class HAVOC_Media {

        author = QAUTHOR;
         name = COMPONENT_NAME;
        url = URL;
        units[] = {"havoc_Flag_White", "havoc_Flag_Black"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"A3_UI_F","cba_main","cba_xeh"};
        VERSION_CONFIG;
        authors[] = {"MitchJC"};
        weapons[] = {};
    };
};

#include "CfgVehicles.hpp"
#include "CfgMusic.hpp"
#include "CfgRadio.hpp"
#include "CfgSounds.hpp"
#include "CfgUnitInsignia.hpp"


class CfgFunctions {

    #include "CfgFunctions.hpp"
};
