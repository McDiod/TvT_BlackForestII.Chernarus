if (!isServer) exitWith {};

params ["_car"];

{_car addWeaponCargoGlobal _x} forEach [
    ["rhs_weap_m240G",1]
];

{_car addMagazineCargoGlobal _x} forEach [
    ["rhsusf_100Rnd_762x51_m62_tracer",8],
    ["rhsusf_50Rnd_762x51_m62_tracer",4]
];

{_car addItemCargoGlobal _x} forEach [
    ["grad_axe",1],
    ["ACE_EntrenchingTool",1],
    ["ACE_key_west",1],
    ["ACE_fieldDressing",5],
    ["ACE_morphine",2],
    ["ACE_epinephrine",2],
    ["ACE_salineIV",1]
];

{_car addBackpackCargoGlobal _x} forEach [
    ["rhsusf_assault_eagleaiii_coy",2],
    ["RHS_M2_Gun_Bag",1],
    ["RHS_M2_MiniTripod_Bag",1]
];
