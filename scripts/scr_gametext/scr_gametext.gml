function scr_gametext(textID){

	switch(textID) {
	
		case 0:
			global.msg[0] = "* Hello! \n* I am a test of the dialouge system";
			global.msg[1] = "* YEAH";
			global.msg[2] = "* YEAH";
			global.msg[3] = "* YEAH";
			break;
			
		case 1:
			break;
	
		case 2:
			global.msg[0] = "The Zombie is waiting for his move!";
			break;
			
		case 3:
			global.msg[0] = "Welcome!";
			global.msg[1] = "In this game, when you enter into a fight, you will see yourself.";
			global.msg[2] = "You are a little circle trying to dodge some bullets.";
			global.msg[3] = "If you get hit by the bullets, your HP decreases.";
			global.msg[4] = "When your HP = 0, you die.";
			global.msg[5] = "But, if you can manage to decrease the enemy HP before you die, you will win.";
			global.msg[6] = "Will you dodge everything? Or are you out for fighting?";
			global.msg[7] = "Have fun!";
			global.msg[8] = "[...]"
			global.msg[8] = "Oh yeah, the story:"
			global.msg[9] = "The year is 204X.";
			global.msg[10] = "Project ReGENESIS has gone horribly wrong. And because of it, the Apocalypse has begun...";
			global.msg[11] = "School is still in session despite this.";
			global.msg[12] = "You play as " + global.charname + ", an eight year old child trying to get to school.";
			global.msg[13] = "Although, there's one problem...";
			global.msg[14] = "A zombie stole your backpack last night.";
			global.msg[15] = "Again.";
			global.msg[16] = "In the process, your bag ripped apart, and now your belongings are strewn all around town.";
			global.msg[17] = "You must collect it all before you get to school.";
			global.msg[18] = "Now..";
			global.msg[19] = "WAKE UP! And press the [C] / [CTRL] key if you dare...";
			break;
			
		case 5:
			global.msg[0] = "Hello, " + global.charname + ".";
			if (global.flag[10] == 8) {
				global.msg[1] = "No wonder it takes you so long to get to school.";
				global.msg[2] = "Very unorganized.";
				global.msg[2] = "Let's hope this doesn't happen tommorow, okay?"
			} else if (global.flag[10] == 7) {
				global.msg[1] = "You look like you almost have everything you need.";
				global.msg[2] = "Hurry up.";
			} else if (global.flag[10] == 6) {
				global.msg[1] = "There's more out there to grab.";
				global.msg[2] = "Hurry up.";
			} else if (global.flag[10] == 5) {
				global.msg[1] = "You will be absent if you do not hurry up.";
			} else if (global.flag[10] == 4) {
				global.msg[2] = "Hurry up.";
			} else if (global.flag[10] == 3) {
				global.msg[1] = global.charname + ", find your stuff.";
			} else if (global.flag[10] == 2) {
				global.msg[1] = "You want me to help you?";
				global.msg[2] = "Seriously?";
				global.msg[3] = "Do I look like your personal maid?";
				global.msg[4] = "Hurry up.";
			} else if (global.flag[10] == 1) {
				global.msg[1] = "What are you talking to me for?";
				global.msg[2] = "Go find your belongings";
			} else if (global.flag[10] == 0) {
				global.msg[1] = "What? You don't have anything?";
				global.msg[2] = "Plotted against by the Zombies?";
				global.msg[3] = "(sigh) Hurry up, " + global.charname + ".";
			}
			break;
	
		case 11:
			global.msg[0] = "You got the ID.";
			break;
	
		case 12:
			global.msg[0] = "You got the Homework.";
			break;
	
		case 13:
			global.msg[0] = "You got the Pencils and Pens.";
			break;
	
		case 14:
			global.msg[0] = "You got the Glasses.";
			break;
	
		case 15:
			global.msg[0] = "You got the Ruler.";
			break;
	
		case 16:
			global.msg[0] = "You got the Book.";
			break;
	
		case 17:
			global.msg[0] = "You got the Jacket.";
			break;
	
		case 18:
			global.msg[0] = "You got the First Aid Kit.";
			break;
	
		case 19:
			global.msg[0] = "You got the Pocket Knife.";
			global.msg[1] = "About time.";
			break;
	
	}

}