function GoblinWander145() {target=Player
	
	if (aggro = 1){ state= EnemySTATE.CHASE target=Player
	}
	


	if((x==xTo) && (y==yTo)) || (timePassed> Enemywanderdistance/Enemyspeed)
	{
	hSpeed=0
	vSpeed=0
	{
	image_speed=0.0;

	}
	if (++wait >= waitDuration)
	{ wait=0
		timePassed=0
		dir = point_direction(x,y,xstart,ystart)+irandom_range(-90,90)
		xTo =x + lengthdir_x(Enemywanderdistance,dir);
		yTo =y + lengthdir_y(Enemywanderdistance,dir);

	}






	}else{timePassed++;
		
		image_speed= 1.0
		
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		var _speedThisFrame = Enemyspeed;
		if (_distanceToGo < Enemyspeed) _speedThisFrame= _distanceToGo;
	 dir = point_direction(x,y,xTo,yTo);
	 hSpeed= lengthdir_x(_speedThisFrame,dir);
	 vSpeed= lengthdir_y(_speedThisFrame,dir);


}
	

	 enemytilecollsion();

	 
	 
	
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 if (++ aggroCheck >= aggroCheckDuration)
	 {
	 aggroCheck=0;
	 if(instance_exists(OGoblin)) && (point_distance(x,y,OGoblin.x,OGoblin.y) <= enemyAggroRadius)
	 {
		 state= EnemySTATE.CHASE;
		 target= OGoblin;
 

	 }
 
 

	 }
 
 
 


}
