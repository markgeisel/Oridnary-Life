function GoblinAttackSlime() { 
	var _spd = Enemyspeed
	_spd=2;
	
	if (image_index<1) _spd=0;
	
	
	if (floor(image_index)== 3) || (floor(image_index)== 5) image_speed = 0;

	var _distanceToGo = point_distance(x,y,xTo,yTo);


	if (_distanceToGo <4)&&(image_index<5) image_speed=1.0;
	if (_distanceToGo > _spd)
	{
	dir= point_direction(x,y,xTo,yTo);
	hSpeed= lengthdir_x(_spd,dir);
	vSpeed= lengthdir_y(_spd,dir);
  
	if (enemytilecollsion() == true){

	xTo=x;
	yTo=y;
	}
	}
	else{
	x= xTo;
	y= yTo;
	if (floor (image_index) ==7)
	{image_index=sprMove;
		
		stateTarget= EnemySTATE.CHASE;
	resetcounter=0
		
		sateWaitDuration = 30;
		state = EnemySTATE.WAIT;

	}


	}


}
