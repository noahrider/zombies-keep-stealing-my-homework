if (place_meeting(x, y, obj_player) && (!instance_exists(obj_textbox))) {
	scr_create_textbox(textID);
	if (kill_trigger) {
		instance_destroy();
	}
}