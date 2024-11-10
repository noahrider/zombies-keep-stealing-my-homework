var uKey = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var dKey = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var lKey = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var rKey = (keyboard_check(vk_right) || keyboard_check(ord("D")));

if (can_move) {
	xspd = (rKey - lKey) * spd;
	yspd = (dKey - uKey) * spd;

	if (place_meeting(x + xspd, y, obj_parent_solids)) {
		xspd = 0;
	}

	if (place_meeting(x, y + yspd, obj_parent_solids)) {
		yspd = 0;
	}

	x += xspd;
	y += yspd;

	if (yspd == 0) {
		if xspd > 0 {face = RIGHT}
		if xspd < 0 {face = LEFT}
	}

	if (xspd == 0) {
		if yspd < 0 {face = UP}
		if yspd > 0 {face = DOWN}
	}
	if (xspd > 0 && face == LEFT) {face = RIGHT}
	if (xspd < 0 && face == RIGHT) {face = LEFT}
	if (yspd > 0 && face == UP) {face = DOWN}
	if (yspd < 0 && face == DOWN) {face = UP}
}

if (xspd == 0 && yspd == 0) {
	image_index = 0;
}


sprite_index = sprite[face]