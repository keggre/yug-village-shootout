_time = 2400;

mission_end = false;

while {_time > 0} do {

	sleep 1;
	
	_time = _time -1;
	
	_hours = floor (_time / 3600);
	_minutes = floor ((_time - (_hours * 3600)) / 60);
	_seconds = _time - (_hours * 3600) - (_minutes * 60);
	
	_message = [str _hours, "h ", str _minutes, "m ", str _seconds, "s ", "remaining"] joinString "";

	hintSilent _message;
	
};

"SideScore" call BIS_fnc_endMissionServer;