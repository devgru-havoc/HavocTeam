#define COMPONENT arcadian
#define COMPONENT_BEAUTIFIED Arcadian GT

#include "\z\havoc\addons\main\script_mod.hpp"

#include "\z\havoc\addons\main\script_macros.hpp"

#define MACRO_ARCADIAN_DAMAGE \
    class Damage { \
        tex[] = {}; \
        mat[] = { \
            QPATHTOR(data\arcadian_body.rvmat), \
            QPATHTOR(data\arcadian_body_damage.rvmat), \
            QPATHTOR(data\arcadian_body_destruct.rvmat), \
            QPATHTOR(data\arcadian_chrome.rvmat), \
            QPATHTOR(data\arcadian_chrome_damage.rvmat), \
            QPATHTOR(data\arcadian_chrome_destruct.rvmat), \
            "a3\data_f\glass_veh.rvmat", \
            "a3\data_f\glass_veh_armored_damage.rvmat", \
            "a3\data_f\glass_veh_armored_damage.rvmat" \
        }; \
    };

#define MACRO_ARCADIAN_ARMED_DAMAGE \
    class Damage { \
        tex[] = {}; \
        mat[] = { \
            QPATHTOR(data\arcadian_body_armed.rvmat), \
            QPATHTOR(data\arcadian_body_armed_damage.rvmat), \
            QPATHTOR(data\arcadian_body_armed_destruct.rvmat), \
            QPATHTOR(data\arcadian_chrome.rvmat), \
            QPATHTOR(data\arcadian_chrome_damage.rvmat), \
            QPATHTOR(data\arcadian_chrome_destruct.rvmat), \
            "a3\data_f\glass_veh.rvmat", \
            "a3\data_f\glass_veh_armored_damage.rvmat", \
            "a3\data_f\glass_veh_armored_damage.rvmat" \
        }; \
    };


#define MACRO_BLUFOR_VEHICLE \
    scope = 2; \
    forceInGarage = 0; \
    side = 1; \
    faction = QUOTE(PREFIX); \
    crew = QGVAR(socom); \
    typicalCargo[] = {QGVAR(socom)};
