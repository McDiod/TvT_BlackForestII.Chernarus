if (!isServer) exitWith {};

params ["_car"];

{_car addWeaponCargoGlobal _x} forEach [
    ["rhs_weap_M136",1]
];

{_car addMagazineCargoGlobal _x} forEach [
    ["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],
    ["rhs_200rnd_556x45_M_SAW",4],
    ["rhs_mag_an_m8hc",6],
    ["rhs_mag_m67",6],
    ["ATMine_Range_Mag",1]
];

{_car addItemCargoGlobal _x} forEach [
    ["ACE_key_west",1],
    ["tfar_anprc152",2],
    ["grad_axe",1],
    ["ACE_fieldDressing",20],
    ["ACE_morphine",10],
    ["ACE_epinephrine",10],
    ["ACE_salineIV",4]
];

{_car addBackpackCargoGlobal _x} forEach [
    ["TFAR_rt1523g_rhs",1]
];
