/// @description check if player can run
if (round(random_range(1, 4)) == 2) {
	global.battlestate = BSTATE.RAN;
} else {
	global.battlestate = BSTATE.ENEMYTURN;
	alarm[1] = enemy_data.turnLength;
}