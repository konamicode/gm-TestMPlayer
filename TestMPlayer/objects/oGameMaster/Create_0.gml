/// @description Insert description here
// You can write your code in this editor

count = 0;
global.team = -1;


if (!DRAW_ENABLED) 
{
	//count = sendRequestPlayerCount(count);
	//show_debug_message(count);	
	show_debug_message("I'm the server!!");
	global.team = 0
		
}
else if (MPLAYER_REMOTE) {
	//instance_destroy();
} else {

	show_debug_message("Single Player!");
}
