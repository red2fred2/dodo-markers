if !(hasInterface) exitWith {};

dodo_markers_color = [0.39, 0.85, 0.93, 1.0];
dodo_markers_marker = "\a3\ui_f\data\GUI\Rsc\RscDisplayMultiplayerSetup\flag_opfor_ca.paa";

dodo_markers_width = 1.0;
dodo_markers_height = 0.5;

// Draw the player's group
dodo_markers_draw = {
	{
		private _position = ASLtoAGL eyePos _x;
		private _name = name _x;

		drawIcon3D [dodo_markers_marker, dodo_markers_color, _position, dodo_markers_width, dodo_markers_height, 0, _name, 2];
	} forEach(units player) - [player];
};

// Register event handler
[] spawn {
	addMissionEventHandler ["Draw3D", dodo_markers_draw];
};
