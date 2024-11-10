/// @description change to enemy turn
global.battlestate = BSTATE.ENEMYTURN;
obj_zombie_battlesprite.shake = true;
alarm[5] = 60;
alarm[1] = enemy_data.turnLength;