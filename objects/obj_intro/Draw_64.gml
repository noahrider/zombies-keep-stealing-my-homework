draw_set_font(fnt_main);
draw_set_color(global.light_green)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (global.debug) {
	draw_text(320, 10, "shown = " + string(shown));
}

if (shown == 1) {
	draw_text(320, 240, "The year is 204X");
} else if (shown == 2) {
	draw_text(320, 240, "Project ReGENESIS has gone horribly wrong.");
	draw_text(320, 260, "And because of it, the Apocalypse has begun...");
} else if (shown == 3) {
	draw_text(320, 240, "School is still in session despite this.");
} else if (shown == 4) {
	draw_text(320, 240, "You play as " + global.charname + ", a ten year old child");
	draw_text(320, 260, "trying to get to school.");
} else if (shown == 5) {
	draw_text(320, 240, "There's one problem...");
} else if (shown == 6) {
	draw_text(320, 240, "A zombie stole your backpack last night.");
} else if (shown == 7) {
	draw_text(320, 240, "Again.");
} else if (shown == 8) {
	draw_text(320, 240, "In the process, your bag ripped apart,");
	draw_text(320, 260, "and now your belongings");
	draw_text(320, 280, "are strewn all around town.");
} else if (shown == 9) {
	draw_text(320, 240, "You must collect it all before you get to school.");
} else if (shown == 10) {
	draw_text(320, 240, "Now...");
} else if (shown == 11) {
	draw_text(320, 240, "WAKE UP!");
}