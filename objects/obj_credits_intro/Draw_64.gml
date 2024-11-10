draw_set_font(fnt_main);
draw_set_color(global.light_green)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (shown == NAMES.GAME) {
	draw_text(320, 240, "Zombies Keep Stealing My Homework!");
	draw_text(320, 260, "A COMPUTER GAME");
} else if (shown == NAMES.NOAH) {
	draw_text(320, 240, "CODED BY");
	draw_text(320, 260, "Noah Rider");
} else if (shown == NAMES.FAITH) {
	draw_text(320, 240, "SPRITES / ARTWORK BY");
	draw_text(320, 260, "Faith Rider");
} else if (shown == NAMES.MAKEUC) {
	draw_text(320, 240, "CREATED FOR")
	draw_text(320, 260, "MakeUC 2024")
}