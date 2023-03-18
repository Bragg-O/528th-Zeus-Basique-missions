removeAllWeapons player;
private _video = ["528th_Aux\Mission_Textures\DebutMission.ogv"] spawn BIS_fnc_playVideo;
sleep 25;
Player setPosATL (getPosATL respawnplatform);
Player switchmove "AidlPercMstpSrasWrflDnon_SaluteOut";
sleep 1;
[1,"BLACK",3,1] call BIS_fnc_fadeEffect;