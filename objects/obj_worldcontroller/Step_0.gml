if (!variable_global_exists("flag")) {
	global.flag = array_create(32, 0);
}


if (keyboard_check_pressed(vk_f4)) {
	//scr_fullscreen();
	window_set_fullscreen(true);
}

if (keyboard_check_pressed(vk_f3)) {
	global.debug = !global.debug;
}

if (global.debug) {
	if (keyboard_check_pressed(vk_f2)) {
		room_goto(room_debug);
	}
	if (keyboard_check_pressed(vk_f5)) {
		room_goto(room_battle);
	}
}

global.room = room;
global.playerx = obj_player.x;
global.playery = obj_player.y;