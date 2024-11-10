function scr_enemy(encounters){

	var enemy = 
	{
	
		name: "", // enemy name
		sprite: 0, // sprite to show
		bulletSprite1: 0, // enemy bullet sprite #1
		bulletSprite2: 0, // enemy bullet sprite #2
		currentHitPoints: 1, // hp when you encounter the enemy
		maxHitPoints: 1, // max hp
		atk: 1, // atk
		hitPower: 1, // how much damage player takes when hit by bullet
		def: 1, // def
		dmgReduced: 1, // how much damage is reduced depending on enemy def
		turnLength: 240 // how long the turn is in frames
	
	}

	switch (encounters) 
	{
	
		case 0:
			enemy.name = "TestMonster";
			enemy.sprite = spr_battle_zombie;
			enemy.currentHitPoints = 20;
			enemy.maxHitPoints = 20;
			enemy.atk = 1;
			enemy.hitPower = 3;
			enemy.def = 1;
			enemy.dmgReduced = 1;
			enemy.turnLength = 240;
			break;
			
		case 1:
			enemy.name = "Zombie";
			enemy.sprite = spr_battle_zombie;
			enemy.currentHitPoints = 20;
			enemy.maxHitPoints = 20;
			enemy.atk = 1;
			enemy.hitPower = 3;
			enemy.def = 1;
			enemy.dmgReduced = 1;
			enemy.turnLength = 240;
			break;
	
		case 2:
			enemy.name = "Zombie";
			enemy.sprite = spr_battle_zombie;
			enemy.currentHitPoints = 20;
			enemy.maxHitPoints = 20;
			enemy.atk = 1;
			enemy.hitPower = 3;
			enemy.def = 1;
			enemy.dmgReduced = 1;
			enemy.turnLength = 240;
			break;
	
		case 3:
			enemy.name = "Zombie";
			enemy.sprite = spr_battle_zombie;
			enemy.currentHitPoints = 20;
			enemy.maxHitPoints = 20;
			enemy.atk = 1;
			enemy.hitPower = 3;
			enemy.def = 1;
			enemy.dmgReduced = 1;
			enemy.turnLength = 240;
			break;
	
	
	}
	return enemy;

}