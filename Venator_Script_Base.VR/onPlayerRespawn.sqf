player setUnitLoadout (player getVariable ["Saved_Loadout",[]]);
_respawnRandom = random (1);
if (_respawnRandom > 0.5) then {
	Player setPosATL (getPosATL respawnplatform_1);
} else {
	Player setPosATL (getPosATL respawnplatform_0);
};
Player switchmove "AidlPercMstpSrasWrflDnon_SaluteOut";
[1,"BLACK",1,1] call BIS_fnc_fadeEffect;