removeAllWeapons player;
private _video = ["528th_Aux\Mission_Textures\DebutMission.ogv"] spawn BIS_fnc_playVideo;
sleep 25;
_respawnRandom = random (1);
if (_respawnRandom > 0.5) then {
	Player setPosATL (getPosATL respawnplatform_1);
} else {
	Player setPosATL (getPosATL respawnplatform_0);
};
Player switchmove "AidlPercMstpSrasWrflDnon_SaluteOut";
sleep 1;
[1,"BLACK",2,1] call BIS_fnc_fadeEffect;
player addEventHandler ["Respawn",{ 

	params ["_newObject","_oldObject"];
	deleteVehicle _oldObject; 

}];