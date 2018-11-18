#include "\a3\editor_f\Data\Scripts\dikCodes.h"
params [["_unit",objNull],["_side",sideUnknown],["_vehicleClass","B_MRAP_01_F"],["_planeClass","RHS_C130J"],["_planeSpawnPos",[0,0,0]],["_area",[[worldSize/2,worldSize/2],worldSize,worldSize,0,true]]];

openMap [true,true];
bf_paradropArea = _area;
bf_paradropSide = _side;
bf_paradropColor = [_side,true] call BIS_fnc_sideColor;
bf_paradropUnit = _unit;
bf_paradropVehicleClass = _vehicleClass;
bf_paradropPlaneClass = _planeClass;
bf_paradropPlaneSpawnPos = _planeSpawnPos;

[true,"CHOOSE DROPZONE (LMOUSE)","CONFIRM (ENTER)"] call bf_fnc_twoLineHint;

bf_paradropChooseclick = [
    "bf_paradropChooseclick",
    "onMapSingleClick",
    {
        deleteMarkerLocal "bf_paradropLocalMarker";

        //create marker
        if (_pos inArea bf_paradropArea) then {
            _mrk = createMarkerLocal ["bf_paradropLocalMarker",_pos];
            _mrk setMarkerTypeLocal "respawn_para";
            _mrk setMarkerColorLocal bf_paradropColor;
        } else {
            deleteMarkerLocal "bf_paradropLocalMarker";
        };
    }
] call BIS_fnc_addStackedEventHandler;

//CONFIRM SELECTION ============================================================
bf_paradropKeydown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
    params ["","_dik"];

    _fnc_close = {
        (findDisplay 46) displayRemoveEventHandler ["KeyDown",bf_paradropKeydown];
        ["bf_paradropChooseclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

        bf_paradropArea = nil;
        bf_paradropSide = nil;
        bf_paradropColor = nil;
        bf_paradropKeydown = nil;
        bf_paradropChooseclick = nil;
        bf_paradropUnit = nil;
        bf_paradropVehicleClass = nil;
        bf_paradropPlaneClass = nil;
        bf_paradropPlaneSpawnPos = nil;
        deleteMarkerLocal "bf_paradropLocalMarker";
        openMap [false,false];
        [false] call bf_fnc_twoLineHint;
    };

    if (_dik == DIK_ESCAPE || _dik in actionKeys "HideMap") exitWith {
        [] call _fnc_close
    };

    if (_dik in [DIK_RETURN,DIK_NUMPADENTER]) exitWith {
        _pos = getMarkerPos "bf_paradropLocalMarker";

        // no position selected
        if (_pos isEqualTo [0,0,0]) then {
            ["PLEASE CHOOSE DROPZONE!"] call bf_fnc_confirmHint;

        // position selected, spawn paradrop and close
        } else {
            bf_paradropUnit setVariable ["bf_paradropCount",(bf_paradropUnit getVariable ["bf_paradropUnit",0]) + 1,true];

            [_pos,bf_paradropPlaneSpawnPos,bf_paradropVehicleClass,bf_paradropPlaneClass] call bf_fnc_spawnParadropPlane;
            [] call _fnc_close;
        };
    };
}];
