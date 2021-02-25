/*
Maintainer: Caleb Serafin
    Checks that all listed connections exist.

Arguments:
    <ARRAY<
        <OBJECT>        road
        <ARRAY<OBJECT>> connected roads
        <ARRAY<SCALAR>> distances to connected roads
    >> _navGrid format

Return Value:
    <ARRAY> Same reference, no changes

Scope: Any, Global Arguments
Environment: Scheduled
Public: No

Example:
    [_navGrid] call A3A_fnc_NG_check_conExists;
*/
params [
    ["_navGrid",[],[ [] ]]
];

private _roadIndexNS = createHashMap;
{
    _roadIndexNS set [str (_x#0),_forEachIndex];
} forEach _navGrid; // _x is road struct <road,ARRAY<connections>,ARRAY<indices>>

private _throwAndCrash = false;
{
    private _myStruct = _x;
    private _myRoad = _myStruct#0;
    private _myConnections = _myStruct#1;

    if !(_myConnections isEqualTo A3A_NG_const_emptyArray) then {
        {
            if (_roadIndexNS getOrDefault [str _x,-1] == -1) then {
                _throwAndCrash = true;
                [1,"Road '"+str _x+"' " + str getPosWorld _x + " is connected to non-indexed road '"+str _myRoad+"' " + str getPosWorld _myRoad + ".","fn_NG_check_conExists"] call A3A_fnc_log;
                ["fn_NG_check_conExists Error","Please check RPT."] call A3A_fnc_customHint;
            };
        } forEach _myConnections;
    };
} forEach _navGrid;

if (_throwAndCrash) then {
    throw ["fn_NG_check_conExists","Please check RPT."];
};

_navGrid;
