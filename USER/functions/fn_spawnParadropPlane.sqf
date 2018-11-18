/*  Original by Christian 'chris5790' Klemm
*   adapted for Blackforest II by McDiod
*/


params [["_targetPos",[0,0,0]],["_startPos",[0,0,0]],["_vehicleClassName","B_MRAP_01_F"],["_planeClassName","RHS_C130J"]];

private _paradropVehicle = createVehicle [
    _vehicleClassName,
    [
        _startPos select 0,
        _startPos select 1,
        0
    ],
    [],
    0,
    "NONE"
];
clearWeaponCargoGlobal _paradropVehicle;
clearItemCargoGlobal _paradropVehicle;
clearMagazineCargoGlobal _paradropVehicle;
clearBackpackCargoGlobal _paradropVehicle;


if (local _paradropVehicle) then {
    _paradropVehicle allowDamage false;
} else {
    [_paradropVehicle, false] remoteExecCall ["allowDamage", _paradropVehicle];
};

private _plane = createVehicle [
    _planeClassName,
    [
        _startPos select 0,
        _startPos select 1,
        0
    ],
    [],
    0,
    "FLY"
];

_plane setVariable ["bf_paradropVehicle",_paradropVehicle, true];

_plane setVehicleAmmo 0;
_plane flyInHeight 150;
_plane setPos (_plane modelToWorld [0,0,150]);
_plane setDir (_plane getDir _targetPos);
_plane setVelocityModelSpace [0,100,0];

createVehicleCrew _plane;
(group (driver _plane)) setCombatMode "BLUE";
(group (driver _plane)) setBehaviour "CARELESS";

{_x addCuratorEditableObjects [[_plane],true]} forEach [loggedCurator,votedCurator];

private _group = group (driver _plane);

private _lowerWaypointPos = _startPos getPos [1000,_startPos getDir _targetPos];
private _lowerWaypoint = _group addWaypoint [_lowerWaypointPos,0];
_lowerWaypoint setWaypointType "MOVE";
_lowerWaypoint setWaypointCompletionRadius 80;
_lowerWaypoint setWaypointStatements ["true", "
    (vehicle this) flyInHeight 150;
"];

private _dropWaypoint = _group addWaypoint [_targetPos, 0];
_dropWaypoint setWaypointType "MOVE";
_dropWaypoint setWaypointCompletionRadius 80;
_dropWaypoint setWaypointStatements ["true", "this spawn bf_fnc_paradropSuccess"];

private _exitWaypointPos = _targetPos getPos [10000,_startPos getDir _targetPos];
private _exitWaypoint = _group addWaypoint [_exitWaypointPos,0];
_exitWaypoint setWaypointType "MOVE";
_exitWaypoint setWaypointCompletionRadius 500;
_exitWaypoint setWaypointStatements ["true", "this call bf_fnc_paradropExit"];
