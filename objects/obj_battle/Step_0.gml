var uKey = (keyboard_check_pressed(vk_up));
var dKey = (keyboard_check_pressed(vk_down));
var lKey = (keyboard_check_pressed(vk_left));
var rKey = (keyboard_check_pressed(vk_right));
var confirmKey = (keyboard_check_pressed(ord("Z")) || (keyboard_check_pressed(vk_enter)));

if (global.battlestate == BSTATE.ENTERING) {
	scr_create_battletextbox(2);
	global.battlestate = BSTATE.PLAYERTURN;
}

if (global.battlestate == BSTATE.ENEMYTURN) {
	option = BOPTION.NONE;
}

if (global.battlestate == BSTATE.PLAYERTURN) {
	if option == BOPTION.NONE {option = BOPTION.FIGHT}
	if (lKey) {
		if (option != 0) {
			option -= 1;
		} else {
			option = 3;
		}
		
	} else if (rKey) {
		if (option != 3) {
			option += 1;
		} else {
			option = 0;
		}
	}
}

if (confirmKey && global.battlestate == BSTATE.PLAYERTURN) {

	if (option == BOPTION.FIGHT) {
		enemy_data.currentHitPoints -= 5 + enemy_data.dmgReduced;
		alarm[0] = 60; // change to enemy turn
	} else if (option == BOPTION.ITEMS) {
		option = BOPTION.FIGHT;
	} else if (option == BOPTION.RUN) {
		alarm[2] = 30; // check if player can run
	}

}


if (enemy_data.currentHitPoints <= 0) {
	global.battlestate = BSTATE.WIN;
}

if (global.battlestate == BSTATE.WIN) {
	global.atk += 1;
	global.def += 1;
	global.lv += 1;
	global.murderlv += 1
	room_goto(global.room);
	instance_create_depth(global.playerx, global.playery, -9999, obj_player);
	instance_destroy(global.encountered);
}

if (global.battlestate == BSTATE.RAN) {
	room_goto(global.room);
	instance_create_depth(global.playerx, global.playery, -9999, obj_player);
}


if (global.battlestate == BSTATE.ENEMYTURN && enemyturn_done == false) {

	instance_create_depth(160 ,144, -99999, obj_player_fighting);
	alarm[0] = 3;
	for (var i = 0; i < 8; i++) {
		instance_create_depth(50, random_range(98, 200), -99999, obj_bullet);
	}
	
	enemyturn_done = true;

}

if (global.inv > 0) {
	global.inv--;
}

if (global.battlestate == BSTATE.PLAYERTURN) {
	instance_destroy(obj_player_fighting);
	instance_destroy(obj_bullet);
	enemyturn_done = false;
}