/// @description Insert description here
// You can write your code in this editor



if (array_length(global.lobbies) > 0  ) {
	var lobby = global.lobbies[0];
	lobbyid = lobby.lobbyid;
}
show_debug_message("Lobby!: " + string(lobbyid));
sendJoinLobby(lobbyid);


