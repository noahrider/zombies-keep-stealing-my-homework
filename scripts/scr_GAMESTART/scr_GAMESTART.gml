function scr_GAMESTART() {

	window_set_caption("Zombies Keep Stealing My Homework!")
	global.debug = false;
	global.plot = 0;
	global.charname = "Robin";
	global.atk = 1;
	global.def = 1;
	global.lv = 1;
	global.murderlv = 0;
	global.confirm_key = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
	global.cancel_key = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift);
	global.light_green = make_color_rgb(188, 189, 139);
	global.medium_green = make_color_rgb(113, 119, 68);
	global.dark_green = make_color_rgb(55, 61, 32);
	global.hp = 25;
	global.maxhp = 25;
	global.time = 0;
	global.day = 1;
	global.inv = 0;
	if (!variable_global_exists("flag")) {
		global.flag = array_create(32, 0);
	}
}