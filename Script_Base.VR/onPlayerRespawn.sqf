player setUnitLoadout (player getVariable ["Saved_Loadout",[]]);
sleep 1;
Player setPosATL (getPosATL respawnplatform);
Player switchmove "AidlPercMstpSrasWrflDnon_SaluteOut";
sleep 1;
[1,"BLACK",3,1] call BIS_fnc_fadeEffect;