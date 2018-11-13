if (!isServer) exitWith {};

params ["_car"];

{_car addWeaponCargoGlobal _x} forEach [
    ["rhs_weap_m84",1]
];

{_car addMagazineCargoGlobal _x} forEach [
    ["rhssaf_250Rnd_762x54R",4]
];

{_car addItemCargoGlobal _x} forEach [
    ["grad_axe",1],
    ["ACE_EntrenchingTool",1],
    ["ACE_key_east",1],
    ["ACE_fieldDressing",5],
    ["ACE_morphine",2],
    ["ACE_epinephrine",2],
    ["ACE_salineIV",1]
];

{_car addBackpackCargoGlobal _x} forEach [
    ["rhs_assault_umbts",2],
    ["RHS_Kord_Gun_Bag",1],
    ["RHS_Kord_Tripod_Bag",1]
];
