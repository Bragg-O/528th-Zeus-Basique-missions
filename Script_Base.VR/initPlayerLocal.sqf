sleep 1;
removeAllWeapons player;
private _video = ["528th_Aux\Mission_Textures\DebutMission.ogv"] spawn BIS_fnc_playVideo;
sleep 1;
Player setPosATL (getPosATL respawnplatform);
Player switchmove "AidlPercMstpSrasWrflDnon_SaluteOut";
sleep 27;
[1,"BLACK",3,1] call BIS_fnc_fadeEffect;