#define COMPONENT friendly_fire
#define COMPONENT_BEAUTIFIED Friendly Fire
#include "\z\havoc\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_FRIENDLY_FIRE
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_FRIENDLY_FIRE
    #define DEBUG_SETTINGS DEBUG_SETTINGS_FRIENDLY_FIRE
#endif

#include "\z\havoc\addons\main\script_macros.hpp"
