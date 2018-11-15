/*  Original by Christian 'chris5790' Klemm
*   adapted for Blackforest II by McDiod
*/


private _plane = (vehicle _this);
private _paradropVehicle = _plane getVariable ["bf_paradropVehicle", objNull];
if !(local _paradropVehicle) exitWith {};

_plane flyInHeight 1000;

/* [objNull, "Abwurf erfolgreich"] call BIS_fnc_showCuratorFeedbackMessage; */

private _bbr = boundingBoxReal _plane;
private _p1 = _bbr select 0;
private _p2 = _bbr select 1;
private _maxWidth = abs ((_p2 select 0) - (_p1 select 0));
private _dropPos = _plane modelToWorld [_maxWidth + 10 ,0,0];

private _para = createVehicle ["B_Parachute_02_F", [0,0,0], [], 0, "NONE"];
_para setPosASL _dropPos;
_paradropVehicle attachTo [_para, [0,0,1]];

[{
    [
        {(getPosATL (_this select 0)) select 2 < 1.5},
        {
            params ["_paradropVehicle"];

            detach _paradropVehicle;
            if(local _paradropVehicle) then {
                _paradropVehicle allowDamage true;
            } else {
                [_paradropVehicle, true] remoteExecCall ["allowDamage", _paradropVehicle];
            };

            "SmokeShellBlue" createVehicle (position _paradropVehicle);
        },
        _this
    ] call CBA_fnc_waitUntilAndExecute;
}, [_paradropVehicle], 3] call CBA_fnc_waitAndExecute;
