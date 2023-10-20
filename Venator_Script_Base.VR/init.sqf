[] execVM "528th_Aux\Mission_Script\init_Loadout.sqf"; //Loadout Script

[] execVM "528th_Aux\Mission_Script\init_MapIcon.sqf"; //Player Map Icon Script

[] execVM "528th_Aux\Mission_Script\init_GarageAir.sqf"; //garage Air Script Need "SpawnAir_Pad", "SpawnAir_terminal"

[] execVM "528th_Aux\Mission_Script\init_GarageCar.sqf"; //garage Car Script Need "SpawnCar_Pad", "SpawnCar_terminal"

[] execVM "528th_Aux\Mission_Script\init_GarageBox.sqf"; //garage Car Script Need "SpawnCar_Pad", "SpawnCar_terminal"

[] execVM "528th_Aux\Mission_Script\init_fortifyACE.sqf"; //Add fortify in ace menu

[] execVM "528th_Aux\Mission_Script\init_MagRestriction.sqf"; //Mag Restriction

[] execVM "528th_Aux\Mission_Script\init_ModsVerification.sqf"; //ModsVerification

[] execVM "528th_Aux\Mission_Script\Addons.sqf"; //Addons

//Cinematique
["528th_Aux\Mission_Textures\DebutMission.ogv"] call BIS_fnc_quotations;
["<t color='#ffffff' size='.5'>Bienvenue à bord de la 528th Légion Targon !<br />Vous avez déjà vu l'introduction ?<br />Appuyez sur la touche [Espace] pour la passer.</t>",-1,1,6,1,0,789] spawn BIS_fnc_dynamicText;

while {true} do {
	sleep 10;
	//Carry and Drag
		ACE_maxWeightCarry = 3500; 
		ACE_maxWeightDrag = 5000;
	//Add allplayers to allcurators
	{_x addCuratorEditableObjects [allPlayers, true];_x addCuratorEditableObjects [vehicles, true];} forEach allCurators;
};