_primary = 1000;
_secondary = 1100;

while {true} do {

	{
		
		_distance = _x distance getMarkerPos "playable_area";

		if ( _distance > _primary) then {
			
			_id = clientOwner;
			"OUTSIDE PLAYABLE AREA" remoteExec ["systemChat", _id];
		
		};
		
		if ( _distance > _secondary) then {
	
			_x setDamage 1;
		
		};

	} forEach playableUnits;
	
	sleep 1;
	
}