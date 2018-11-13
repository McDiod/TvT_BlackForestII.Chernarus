if (!isServer) exitWith {};

params ["_car"];

{_car addWeaponCargoGlobal _x} forEach [
    ["rhs_weap_rpg26",1]
];

{_car addMagazineCargoGlobal _x} forEach [
    ["rhs_30Rnd_545x39_AK",30],
    ["rhs_100Rnd_762x54mmR_green",4],
    ["rhs_mag_rdg2_white",6],
    ["rhs_mag_rgo",6],
    ["rhs_mine_tm62m_mag",1]
];

{_car addItemCargoGlobal _x} forEach [
    ["ACE_key_east",1],
    ["tfar_fadak",2],
    ["grad_axe",1],
    ["ACE_fieldDressing",20],
    ["ACE_morphine",10],
    ["ACE_epinephrine",10],
    ["ACE_salineIV",4]
];

{_car addBackpackCargoGlobal _x} forEach [
    ["tf_mr3000_rhs",1]
];
