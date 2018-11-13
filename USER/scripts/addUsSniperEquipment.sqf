if (!isServer) exitWith {};

params ["_car"];

{_car addWeaponCargoGlobal _x} forEach [
    ["rhs_weap_XM2010",1]
];

{_car addMagazineCargoGlobal _x} forEach [
    ["rhsusf_5Rnd_300winmag_xm2010",30]
];

{_car addItemCargoGlobal _x} forEach [
    ["ACE_optic_LRPS_2D",1],
    ["rhsusf_acc_harris_bipod",1],
    ["ACE_VectorDay",1],
    ["ACE_ATragMX",1],
    ["ACE_Kestrel4500",1],
    ["ACE_RangeCard",1],
    ["ACE_SpottingScope",1],
    ["ACE_Tripod",1],
    ["ACE_key_west",1],
    ["ACE_fieldDressing",5],
    ["ACE_morphine",2],
    ["ACE_epinephrine",2],
    ["ACE_salineIV",1]
];

{_car addBackpackCargoGlobal _x} forEach [
    ["rhsusf_falconii_coy",2]
];
