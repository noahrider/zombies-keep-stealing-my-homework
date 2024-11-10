draw_set_font(fnt_main);
draw_set_color(global.dark_green);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (global.debug) {
	draw_text(10, 10, "MakeUC Project 2024 [Zombies Keep Stealing My Homework]");
	draw_text(10, 30, "X: " + string(obj_player.x));
	draw_text(10, 50, "Y: " +  string(obj_player.y));
	draw_text(10, 70, "PLOT: " +  string(global.plot));
}

draw_set_halign(fa_right);
draw_text(630, 10, "Day " + string(global.day));
if (global.flag[1]) {
	draw_text_color(630, 50, "ID", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 50, "ID", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[2]) {
	draw_text_color(630, 70, "Homework", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 70, "Homework", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[3]) {
	draw_text_color(630, 90, "Pencils and Pens", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 90, "Pencils and Pens", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[4]) {
	draw_text_color(630, 110, "Glasses", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 110, "Glasses", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[5]) {
	draw_text_color(630, 130, "Ruler", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 130, "Ruler", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[6]) {
	draw_text_color(630, 150, "Book", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 150, "Book", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[7]) {
	draw_text_color(630, 170, "Jacket", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 170, "Jacket", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[8]) {
	draw_text_color(630, 190, "First Aid Kit", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 190, "First Aid Kit", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}

if (global.flag[9]) {
	draw_text_color(630, 210, "Pocket Knife", global.light_green, global.light_green, global.light_green, global.light_green, 1);
} else {
	draw_text_color(630, 210, "Pocket Knife", global.medium_green, global.medium_green, global.medium_green, global.medium_green, 1);
}
