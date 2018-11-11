/*  Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

if (isServer) then {
    [] execVM "USER\scripts\createProtectionMarkers.sqf";
};
