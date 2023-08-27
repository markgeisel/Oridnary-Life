function scr_menu() {
	
	global.player=1 room_goto(Test) 
	
	instance_destroy()
	switch(mpos){
		
	case 0: if global.menu=1{global.player=1 room_goto(Test) instance_destroy()} global.menu=1 break;
	case 1: if global.menu=1{global.player=1LoadGame(global.gamesaveslot)} break;
	case 2: if global.menu=1{global.player=3 room_goto(Test)} else { game_end()} break;
	
	default: break;
	}




}
