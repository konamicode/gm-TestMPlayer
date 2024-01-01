/// @description Insert description here
// You can write your code in this editor


show_debug_message("room start!");

if (room == rLobbiesList) && (!DRAW_ENABLED) {
	//draw_enable_drawevent(DRAW_ENABLED);
	var lobbyid = parameter_string(3);
	

	if (lobbyid!= "") {
		show_debug_message("Lobby!: " + string(lobbyid));
		sendJoinLobby(lobbyid);
	}
	else {
		sendRequestLobbies()
		alarm[1] = 1 * 60;
	}
	
}

global.mainMenu.visible = ( room == rmMenu);

