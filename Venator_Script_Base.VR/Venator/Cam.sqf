you_cam_create={ 
    params [["_cam", objNull, []], ["_target", objNull, []], ["_screen", [], []], ["_effect", 0, []], ["_fov", 1, []], ["_surface", "rtt_1", []], ["_light", false, []], ["_pip", false, []]]; 
 
private    _light_effect={ 
    private _light = createVehicle ["#lightpoint", position _this, [], 0, "CAN_COLLIDE"]; 
    _light setLightBrightness 0.6; 
    _light setLightColor [1,1,1]; 
    _light setLightAmbient [1,1,1]; 
    _light setLightIntensity 200; 
}; 
 
        private     _cam_obj = "Camera" camCreate (_cam modelToWorld [0,0,0]); 
        private     _display= format ["#(argb,512,512,1)r2t(%1,1.0)", _surface]; 
        private        _rtt = findDisplay 46 ctrlCreate ["RscPicture", -1]; 
 
        if !(_pip) then {_rtt ctrlSetPosition [1200, 0]}; 
                _rtt ctrlCommit 0; 
                _rtt ctrlSetText _display; 
                _cam_obj cameraEffect ["internal","back", _surface]; 
                _surface setPiPEffect [_effect]; 
                _cam_obj camSetDir (position _cam vectorFromTo position _target); 
                _cam_obj camSetFov _fov; 
                _cam_obj camCommit 0; 
 
 
                { 
                    _x setObjectTextureGlobal [0, _display]; 
                    if (_light) then {_x call _light_effect} 
                }forEach _screen; 
 
        if !(_pip) then {_rtt spawn { sleep 0.2; ctrlDelete _this}}; 
true 
};