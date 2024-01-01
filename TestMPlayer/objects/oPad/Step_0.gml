/// @description Insert description here
// You can write your code in this editor


if (team == global.team) {
	// inputs
	kup = keyboard_check(ord("W"))
	kdown = keyboard_check(ord("S"))


	// direction
	ydir = kdown - kup
	vsp = ydir * base_spd

	// stop
	if bbox_top + vsp < 0
		vsp = -bbox_top
	if bbox_bottom + vsp > room_height
		vsp = room_height-bbox_bottom
	
	if global.mplayer
		sendPad()
}

// move
y += vsp


