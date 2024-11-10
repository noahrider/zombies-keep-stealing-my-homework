if (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) {
	if (shown < 11) {
		shown += 1;
	} else {
		room_goto_next();
	}
}