//this is a test comment
params["_pos","_min","_max","_debug","_return","_success"];
//takes in positions or objects
//decide which overlaod to use
_success = false; //if viable params have been passed. will log error if not
if (_debug) then {
	diag_log ["fnc interpolate runs with:",_this];
};
/*if (_pos isEqualType [] && _max isEqualType []) then {
	_success = true;
};
if (_pos isEqualType objNull && _pos isEqualType objNull) then {
	_success = true;
	_return = (_max - _pos)/_max
};*/
if (_pos isEqualType 0 && _max isEqualType 0) then {
	_success = true;
	_return = ((_max - _pos)/_max);
	diag_log ["type number, return: ", _return];
};
if (_debug && !_success) then {
	diag_log ["fn_interpolate has failed with params: ", _this];
};
if (!_success) exitWith {}; //kill if no useful params were passed
_return
