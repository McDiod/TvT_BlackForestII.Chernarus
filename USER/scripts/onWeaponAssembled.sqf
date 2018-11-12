params ["_unit","_weapon"];

if (!local _weapon) exitWith {};
if (_weapon getVariable ["bf_weaponHandled",false]) exitWith {};
_weapon setVariable ["bf_weaponHandled",true,true];

switch (typeOf _weapon) do {
    /*case ("B_Mortar_01_F"): {
        _weapon removeMagazineTurret ["8Rnd_82mm_Mo_Flare_white", [0]];
        _weapon removeMagazineTurret ["8Rnd_82mm_Mo_shells", [0]];
        _weapon removeMagazineTurret ["8Rnd_82mm_Mo_shells", [0]];
    };*/
    case ("RHS_M2StaticMG_MiniTripod_D"): {
        for [{_i=0},{_i<2},{_i=_i+1}] do {
            _weapon addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];
        };
    };
    case ("rhs_KORD_MSV"): {
        for [{_i=0},{_i<7},{_i=_i+1}] do {
            _weapon addMagazineTurret ["rhs_mag_127x108mm_50",[0]];
        };
    };
};
