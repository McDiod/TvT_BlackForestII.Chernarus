class us_bf2: us_army {
	class AllUnits: AllUnits {
        uniform = "rhs_uniform_FROG01_wd";
        headgear = "rhsusf_lwh_helmet_marpatwd";
        vest = "rhsusf_spc_rifleman";
        primaryWeapon = "rhs_weap_m4a1_blockII_bk";
        primaryWeaponOptics[] = {"rhsusf_acc_T1_high","rhsusf_acc_eotech_xps3"};
    };

	class Type:Type {

		class Soldier_F: Soldier_F {};

		class Soldier_AR_F: Soldier_AR_F {
            primaryWeapon = "rhs_weap_m249_pip_L";
            headgear = "rhsusf_lwh_helmet_marpatwd";
            vest = "rhsusf_spc_mg";
            backpack = "rhsusf_assault_eagleaiii_coy";
		};

        class Soldier_AAR_F: Soldier_AAR_F {
            backpack = "rhsusf_assault_eagleaiii_coy";
        };

        class Soldier_SL_F: Soldier_SL_F {
            headgear = "rhsusf_lwh_helmet_marpatwd_headset_blk2";
            vest = "rhsusf_spc_squadleader";
            backpack = "TFAR_rt1523g_rhs";
        };

        class Soldier_TL_F: Soldier_TL_F {
            headgear = "rhsusf_lwh_helmet_marpatwd_headset_blk2";
            vest = "rhsusf_spc_teamleader";
            backpack = "rhsusf_assault_eagleaiii_coy";
        };

        class HeavyGunner_F: Soldier_F {
            handgunWeapon = "";
            vest = "rhsusf_spc_mg";
        };

        class support_AMG_F: Soldier_F {

        };

        class sniper_F: Soldier_F {
            headgear = "rhs_booniehat2_marpatwd";
            vest = "rhsusf_spc";
            addItemsToUniform[] = {
                LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag")
            };
            addItemsToVest[] = {
				LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag")
			};
        };

        class spotter_F: Soldier_F {
            headgear = "rhs_booniehat2_marpatwd";
            vest = "rhsusf_spc";
            addItemsToUniform[] = {
                LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag")
            };
            addItemsToVest[] = {
				LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag")
			};
        };
    };
};
