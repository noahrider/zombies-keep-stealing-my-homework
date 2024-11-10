enum BSTATE {
	ENTERING,
	PLAYERTURN,
	ENEMYTURN,
	WIN,
	LOSE,
	RAN,
	LEAVING
}

enum BOPTION {
	NONE,
	FIGHT,
	ITEMS,
	RUN
}

global.battlestate = BSTATE.ENTERING;


// option 0 = none, 1 = fight, 2 = items, 3 = run.
//option = 0;


option = BOPTION.NONE;


enemy_data = scr_enemy(round(random_range(1, 4)));

enemyturn_done = false;

