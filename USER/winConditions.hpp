class bluforeliminated {
    preset = "ELIMINATION";
    presetParams[] = {"WEST"};

    condition = "";
    checkInterval = 0;

    winners[] = {"EAST","INDEPENDENT"};
    winText = "BLUFOR eliminated after %1 minutes.<br/>OPFOR wins!";
    winTextParams[] = {"round (CBA_missionTime/60)"};
};

class opforeliminated {
    preset = "ELIMINATION";
    presetParams[] = {"EAST"};

    condition = "";
    checkInterval = 0;

    winners[] = {"WEST","INDEPENDENT"};
    winText = "OPFOR eliminated after %1 minutes.<br/>BLUFOR wins!";
    winTextParams[] = {"round (CBA_missionTime/60)"};
};

class bluforWinPoints {
    preset = "TIMEOUT";
    presetParams[] = {3000,"([EAST] call grad_points_fnc_getPoints) < ([WEST] call grad_points_fnc_getPoints)"};

    condition = "";
    checkInterval = 0;

    winners[] = {"WEST"};
    winText = "Time is up. Blufor wins by points!";
    winTextParams[] = {};
};

class opforWinPoints {
    preset = "TIMEOUT";
    presetParams[] = {3000,"([EAST] call grad_points_fnc_getPoints) > ([WEST] call grad_points_fnc_getPoints)"};

    condition = "";
    checkInterval = 0;

    winners[] = {"EAST"};
    winText = "Time is up. Opfor wins by points!";
    winTextParams[] = {};
};

class drawPoints {
    preset = "TIMEOUT";
    presetParams[] = {3000,"([EAST] call grad_points_fnc_getPoints) == ([WEST] call grad_points_fnc_getPoints)"};

    condition = "";
    checkInterval = 0;

    winners[] = {"EAST","WEST"};
    winText = "Time is up. Draw!";
    winTextParams[] = {};
};
