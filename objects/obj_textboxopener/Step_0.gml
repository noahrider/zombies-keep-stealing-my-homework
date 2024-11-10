if (place_meeting(x, y, obj_player) && (!instance_exists(obj_textbox)) && keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter)) {
	scr_create_textbox(textID);
}