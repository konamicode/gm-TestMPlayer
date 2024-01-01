/// @description Insert description here
// You can write your code in this editor



global.mainMenu = new SUICanvas()
global.mplayer = false;

var btn_w = 192
var btn_h = 64
var offset_y = 50

txt_title = global.mainMenu.appendChild(new SUITitle(0, 90, "Test Game"))
txt_title.set("center", room_width/2)

btn_lobbies = global.mainMenu.appendChild(
	new SUIButton(0, room_height/2-(btn_h+offset_y)/2, "Single Player",
	function() { room_goto(rmTestSPlayer) }, {w: btn_w, h: btn_h}))
	
btn_login = global.mainMenu.appendChild(
	new SUIButton(0, room_height/2+(btn_h+offset_y)/2, "MPlayer", 
	function() { global.mplayer = true; room_goto(rLobbiesList); }, {w: btn_w, h: btn_h}))

btn_lobbies.set("center", room_width/2)
btn_login.set("center", room_width/2)

if (!DRAW_ENABLED)
	alarm[0] = 2 * 60;