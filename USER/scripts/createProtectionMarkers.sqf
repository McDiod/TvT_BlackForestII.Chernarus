{
    (triggerArea _x) params ["_a","_b","_dir"];
    for [{_i=0}, {_i<2}, {_i=_i+1}] do {
        _marker = createMarker [format ["grad_protectionszone_%1_%2",_foreachindex,_i], getPos _x];
        _marker setMarkerDir _dir;
        _marker setMarkerBrush "BORDER";
        _marker setMarkerShape "RECTANGLE";
        _marker setMarkerColor (["COLOREAST","COLORWEST"] select _foreachindex);
        _marker setMarkerSize [_a + _i*5,_b + _i*5];
    };
} forEach [opforHqZone,bluforHqZone];
