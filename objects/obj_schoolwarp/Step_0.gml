if (place_meeting(x, y, obj_player)) {
	if (global.daymurderlv <= 27) {
		room_goto(room_ending);
	} else {
		global.day += 1;
		room_goto(room_maincity);
		global.flag[0] = 0;
		global.flag[1] = 0;
		global.flag[2] = 0;
		global.flag[3] = 0;
		global.flag[4] = 0;
		global.flag[5] = 0;
		global.flag[6] = 0;
		global.flag[7] = 0;
		global.flag[8] = 0;
		global.flag[9] = 0;
		global.flag[10] = 0;
		global.daymurderlv = 0;
	}
}