/*
    File: Mission/init.sqf
    Author: Bragg for 528th Legion Targon
    Public: No

    Description: Please do not {Copy, Modify, Plagiarize} the following content without prior authorization from its creator.
    
    Website: [www.528th.fr]
*/
/* ============================================================================ */
/* vvv You can deactivate a function with "//" at the beginning of the line vvv */
/* ============================================================================ */

//Add fortify in ace menu
	[] execVM "528th_Init\init_fortifyACE.sqf";

//Player Map Icon Script
	[] execVM "528th_Init\init_MapIcon.sqf";


/* ============================================================================ */
/* vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv Do not touch vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv */
/* ============================================================================ */

//init ALL 528th Forced Script
	[] execVM "528th_Init\init_528th.sqf";

_olddir = 0; 
_newdir = 0;

while {true} do {
    sleep 0.01;
    _olddir = _newdir;
    _newdir = _olddir + 1;
    MiniAtlas setDir _newdir;
};