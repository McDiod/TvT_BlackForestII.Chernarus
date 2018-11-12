/*  Allgemeine Info über die Mission.
*   Ist in description.ext eingebunden, kann also auch für andere Configs benutzt werden.
*/

author = "Name für Gruppe Adler";                                               //Missionsersteller (Du)
onLoadName = "TVT TEMPLATE";                                                    //Name der Mission
onLoadMission = "";                                                             //Beschreibung der Mission (wird im Ladebildschirm unterhalb des Ladebildes angezeigt)
loadScreen = "data\loadpic.paa";                                                //Ladebild

class Extended_WeaponAssembled_EventHandlers {
    class CAManBase {
        class bf_onWeaponAssembled {
            WeaponAssembled = "_this call compile preprocessFile 'USER\scripts\onWeaponAssembled.sqf'";
        };
    };
};
