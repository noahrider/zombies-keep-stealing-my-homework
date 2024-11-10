function scr_fullscreen() {

	if (window_get_fullscreen()) {
		window_set_fullscreen(false);
		window_set_size(640, 480);
	} else {
		window_set_fullscreen(true);
	}

}