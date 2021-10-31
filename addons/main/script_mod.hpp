#define MAINPREFIX z
#define PREFIX HAVOC
#define SUBPREFIX addons

#include "script_version.hpp"

#define VERSION MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_STR MAJOR.MINOR.PATCH.BUILD
#define VERSION_AR MAJOR,MINOR,PATCHLVL,BUILD

#define AUTHOR HAVOC
#define LOGO_PATH "\z\havoc\addons\media\images\HAVOCLOGO@0.25x.paa"

#define URL https://armadocs.purplesmoke.info/
#define NAME HAVOC

// MINIMAL REQUIRED VERSIONS
// ARMA, CBA, ACE
#define REQUIRED_VERSION 2
#define REQUIRED_CBA_VERSION {3,12,2}
#define REQUIRED_ACE_VERSION {3,12,6}

#define ZEUS_ADDITIONS_TAG ZEUS_ADDITIONS

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(HAVOC - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(HAVOC - COMPONENT)
#endif
