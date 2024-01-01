// All the macro/config definitions go here

#macro WARP_VERSION "v5.1.0"
#macro GAME_VERSION "v1.0.0"

trace("Welcome to Warp % by Evoleo!", WARP_VERSION)



network_set_config(network_config_use_non_blocking_socket, true)

#macro ALLOW_UKNOWN_ENTITIES true

// purges all entities from the room (so that there aren't any local duplicates when loading everything from the server)
// toggle this off if you have some specific case where you need to keep the entities that are in the room locally
#macro PURGE_ENTITIES_ON_ROOM_START true

// instantly teleports if an entity has moved > than this on a single axis in a single tick
#macro POS_INTERP_THRESH 100

#macro TIMESTAMPS_ENABLED true

// offset in ms, a buffer between server and client time to allow for network latency & inconsistency
global.server_time_delay = 100
#macro SERVER_TIME_DELAY global.server_time_delay
// if set to true, global.server_time_delay will automatically increase when lag spikes occur
#macro AUTOADJUST_SERVER_DELAY true


#macro SOCKET_TYPE SOCKET_TYPES.WS

enum SOCKET_TYPES {
	TCP = network_socket_tcp,
	WS = network_socket_ws,
	WSS = network_socket_wss
}

// Below are config-dependant macros.
// Choose configs in GameMaker in the top-right corner

// Default (just mirrors debug)
#macro Default:IP "127.0.0.1"
#macro Default:PORT "1338"
#macro Default:WS_PORT "3001"
#macro Default:DUAL_INSTANCE true
// you can set this macro to >1 to test the game with 3+ instances running at once
#macro Default:DUAL_INSTANCE_COUNT 1
#macro Default:DRAW_ENABLED true

#macro Default:MPLAYER_REMOTE false

// Production
#macro Prod:IP   "xxx.xxx.xxx.xxx" // insert your external server IP
//#macro Prod:IP   "195.2.80.50"
#macro Prod:PORT "1337"
#macro Prod:WS_PORT "3000"
#macro Prod:DUAL_INSTANCE true
//#macro Prod:DUAL_INSTANCE false
#macro Prod:DUAL_INSTANCE_COUNT 1
#macro Prod:DRAW_ENABLED true
#macro Prod:MPLAYER_REMOTE true

#macro ProdHeadless:IP   "xxx.xxx.xxx.xxx" // insert your external server IP
//#macro ProdHeadless:IP   "195.2.80.50"
#macro ProdHeadless:PORT "1337"
#macro ProdHeadless:WS_PORT "3000"
#macro ProdHeadless:DUAL_INSTANCE false
#macro ProdHeadless:DRAW_ENABLED false
#macro ProdHeadless:MPLAYER_REMOTE false

// Debug/Development
#macro Dev:IP   "127.0.0.1"	// localhost
#macro Dev:PORT "1338"
#macro Dev:WS_PORT "3001"
#macro Dev:DUAL_INSTANCE true
#macro Dev:DUAL_INSTANCE_COUNT 0
#macro Dev:DRAW_ENABLED true
#macro Dev:MPLAYER_REMOTE true

#macro DevSinglePlayer:IP   "127.0.0.1"	// localhost
#macro DevSinglePlayer:PORT "1338"
#macro DevSinglePlayer:WS_PORT "3001"
#macro DevSinglePlayer:DUAL_INSTANCE false
#macro DevSinglePlayer:DUAL_INSTANCE_COUNT 1
#macro DevSinglePlayer:DRAW_ENABLED true
#macro DevSinglePlayer:MPLAYER_REMOTE false

#macro DevHeadless:IP   "127.0.0.1"	// localhost
#macro DevHeadless:PORT "1338"
#macro DevHeadless:WS_PORT "3001"
#macro DevHeadless:DUAL_INSTANCE false
#macro DevHeadless:DUAL_INSTANCE_COUNT 1
#macro DevHeadless:DRAW_ENABLED false
#macro DevHeadless:MPLAYER_REMOTE true


// warn about not setting the config (press the "target" icon in the top-right corner of IDE)
#macro CONFIGS_SET true
#macro Default:CONFIGS_SET false
if (!CONFIGS_SET) {
	trace("")
	trace("### Remember to set your config by pressing the 'target' icon in the top-right corner of IDE! (Dev = Development, Prod = Production) ###")
	trace("")
}


#macro CONNECT_TIMEOUT 60 * 5 // 5 seconds


// Allow up to 4000 ping (YYG recommends ~1000 for LAN-only games)
network_set_config(network_config_connect_timeout, 4000)

if (!DRAW_ENABLED) {
	draw_enable_drawevent(DRAW_ENABLED);
	var lobby = parameter_string(3);
	
	show_debug_message("Lobby!: " + string(lobby));
}
