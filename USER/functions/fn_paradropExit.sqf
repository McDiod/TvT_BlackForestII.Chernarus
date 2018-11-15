/*  Original by Christian 'chris5790' Klemm
*   adapted for Blackforest II by McDiod
*/


if(!local _this) exitWith {};

private _crew = crew (vehicle _this);
deleteVehicle (vehicle _this);

{
    deleteVehicle _x;
} forEach _crew;
