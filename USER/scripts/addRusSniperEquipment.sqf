if (!isServer) exitWith {};

params ["_car"];

{_car addWeaponCargoGlobal _x} forEach [
    ["rhs_weap_t5000",1]
];

{_car addMagazineCargoGlobal _x} forEach [
    ["rhs_5Rnd_338lapua_t5000",30],
    ["rhs_30Rnd_545x39_AK",6]
];

{_car addItemCargoGlobal _x} forEach [
    ["ACE_optic_LRPS_2D",1],
    ["rhs_acc_harris_swivel",1],
    ["ACE_VectorDay",1],
    ["ACE_ATragMX",1],
    ["ACE_Kestrel4500",1],
    ["ACE_RangeCard",1],
    ["ACE_SpottingScope",1],
    ["ACE_Tripod",1],
    ["ACE_key_east",1]
];

{_car addBackpackCargoGlobal _x} forEach [
    ["rhsusf_falconii_coy",2]
];
