#define MAINPREFIX z
#define PREFIX havoc
#define SUBPREFIX addons

#include "script_version.hpp"

#define VERSION MAJOR.MINOR.PATCHLVL
#define VERSION_STR MAJOR.MINOR.PATCH
#define VERSION_AR MAJOR,MINOR,PATCHLVL

#define HAVOC_TAG HAVOC

#define AUTHOR HAVOC
#define QAUTHOR QUOTE(AUTHOR)

#define LOGO_PATH "\z\havoc\addons\media\images\havoc_card_1024.paa"

#define URL "https://armadocs.purplesmoke.info/"
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
