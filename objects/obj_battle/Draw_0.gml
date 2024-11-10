draw_set_font(fnt_main);
draw_set_color(global.light_green);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (global.debug) {
	draw_text(120, 25, "BSTATE = " + string(global.battlestate))
	draw_text(120, 50, "OPTION = " + string(option))
	draw_text(120, 75, "MAX HEALTH = " + string(global.maxhp))
	draw_text(120, 100, "HEALTH = " + string(global.hp))
}

draw_set_valign(fa_top);
draw_set_font(fnt_main_smol);

// add sprite drawing code here later
draw_sprite_stretched(spr_textbox, 1, 64, 208, 192, 32)
draw_set_halign(fa_left);
draw_set_font(fnt_main);
if (option == BOPTION.FIGHT) {
	draw_text_color(79, 216, "FIGHT", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
} else {
	draw_text_color(79, 216, "FIGHT", global.dark_green, global.dark_green, global.dark_green, global.dark_green, 1);
}

if (option == BOPTION.ITEMS) {
	draw_text_color(142, 216, "ITEMS", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
} else {
	draw_text_color(142, 216, "ITEMS", global.dark_green, global.dark_green, global.dark_green, global.dark_green, 1);
}

if (option == BOPTION.RUN) {
	draw_text_color(207, 216, "RUN", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
} else {
	draw_text_color(207, 216, "RUN", global.dark_green, global.dark_green, global.dark_green, global.dark_green, 1);
}

if (global.hp <= 0) {
	room_goto(room_maincity);
	global.hp = global.maxhp;
}


draw_set_font(fnt_main_verysmol);


draw_healthbar(16, 39, 47, 47, global.hp, global.dark_green, global.medium_green, global.light_green, 0, false, false);
draw_text(16, 50, string(global.hp) + " / " + string(global.maxhp));
draw_healthbar(272, 39, 303, 47, enemy_data.currentHitPoints, global.dark_green, global.medium_green, global.light_green, 0, false, false);
draw_text(272, 50, string(enemy_data.currentHitPoints) + " / " + string(enemy_data.maxHitPoints));