class rus_bf2: rus_msv_w {
	class AllUnits: AllUnits {
        uniform = "rhs_uniform_emr_patchless";
        vest = "rhs_6b23_digi_6sh92";
        headgear = "rhs_6b27m_digi";
        primaryWeaponOptics = "rhs_acc_pkas";
    };

	class Type:Type {

		class Soldier_AR_F: Soldier_AR_F {
            headgear = "rhs_6b27m_digi_bala";
		};

        class Soldier_SL_F: Soldier_SL_F {
            primaryWeaponOptics = "rhs_acc_pkas";
            headgear = "rhs_6b27m_digi_ess";
            vest = "rhs_6b23_digi_6sh92_headset";
        };

        class Soldier_TL_F: Soldier_TL_F {
            primaryWeaponOptics = "rhs_acc_pkas";
            headgear = "rhs_6b27m_digi_ess";
            vest = "rhs_6b23_digi_6sh92_vog_headset";
        };

        class HeavyGunner_F: Soldier_F {
            handgunWeapon = "";
        };

        class support_AMG_F: Soldier_F {

        };

        class sniper_F: Soldier_F {
            headgear = "rhs_Booniehat_digi";
            vest = "rhs_6b23_digi";
            addItemsToVest[] = {
				LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag")
			};
        };

        class spotter_F: Soldier_F {
            headgear = "rhs_Booniehat_digi";
            vest = "rhs_6b23_digi";
            addItemsToVest[] = {
				LIST_2("rhs_mag_30Rnd_556x45_M855A1_Stanag")
			};
        };
    };
};
