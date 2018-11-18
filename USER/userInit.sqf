/*  Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

if (isServer) then {
    [] execVM "USER\scripts\createProtectionMarkers.sqf";
};

// bf_playAreaTrigger
// [player,playerSide,"B_MRAP_01_F",bf_playAreaTrigger] call bf_fnc_paraDrop;


private _condition = {
    params ["_unit"];
    _unit getVariable ["bf_isCommander",false] &&
    {_unit getVariable ["bf_paradropCount",0] < 1} &&
    {side _unit in [WEST,EAST]}
};
private _onAct = {
    params ["_unit"];
    private ["_vehClass","_planeClass","_planeSpawnPos"];

    _side = side _unit;
    if (_side == WEST) then {
        _vehClass = "rhsusf_m998_w_2dr_halftop";
        _planeClass = "RHS_C130J";
        _planeSpawnPos = [6616.97,-2605.18,0];
    } else {
        _vehClass = "rhs_tigr_vdv";
        _planeClass = "RHS_Mi8mt_Cargo_vdv";
        _planeSpawnPos = [4763.45,10057.2,0];
    };

    [_unit,_side,_vehClass,_planeClass,_planeSpawnPos,bf_playAreaTrigger] call bf_fnc_paraDrop;
};
private _action = ["bf_paradropAction", "Request Paradrop", "\A3\ui_f\data\igui\cfg\simpleTasks\types\map_ca.paa",_onAct,_condition] call ace_interact_menu_fnc_createAction;
["CAManBase",1,["ACE_SelfActions"],_action,true] call ace_interact_menu_fnc_addActionToClass;
