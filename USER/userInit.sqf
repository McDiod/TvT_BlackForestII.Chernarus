/*  Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

if (isServer) then {
    [] execVM "USER\scripts\createProtectionMarkers.sqf";
};

// bf_playAreaTrigger
// [player,playerSide,"B_MRAP_01_F",bf_playAreaTrigger] call bf_fnc_paraDrop;
