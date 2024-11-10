if (room_get_name(room) = room_battle) {
	obj_overworldzombie.visible = false;
}

if (instance_exists(obj_player)) {
	var notice_bounds = collision_circle(x, y, 75, obj_player, true, false);


	if (place_meeting(x, y, obj_parent_solids)) {
		spd = 0;
	}

	if (notice_bounds && noticed == false) {
		noticed = true;
		chase_player = true;
		alarm[3] = 1;
	}

	if (chase_player) {
		move_towards_point(obj_player.x, obj_player.y, spd)
	}

	if (speed != 0) {
		image_speed = 3;
	} else {
		image_speed = 0;
	}

	if (point_distance(x, y, obj_player.x, obj_player.y) > 250) {
		chase_player = false;
		noticed = false;
	}

	if (place_meeting(x, y, obj_player)) {
		alarm[0] = 1;
		obj_player.can_move = false;
		//spd = 0;
	}



	if (phy_speed_y == 0) {
		if phy_speed_x > 0 {face = RIGHT}
		if phy_speed_x < 0 {face = LEFT}
	}

	if (phy_speed_x == 0) {
		if phy_speed_y < 0 {face = UP}
		if phy_speed_y > 0 {face = DOWN}
	}
	if (phy_speed_x > 0 && face == LEFT) {face = RIGHT}
	if (phy_speed_x < 0 && face == RIGHT) {face = LEFT}
	if (phy_speed_y > 0 && face == UP) {face = DOWN}
	if (phy_speed_y < 0 && face == DOWN) {face = UP}
}