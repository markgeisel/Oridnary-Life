function GoblinAttackRangeSquid() { 
	var _spd = Enemyspeed;

	
	if (floor(image_index)==  2) && (count ==0)
	{with (instance_create_layer(x,y-16,"Instances",ThrowingKnife))
	{
var tar_x = OGoblin.x+lengthdir_x(40*OGoblin.speedWalk,OGoblin.direction);
var tar_y = OGoblin.y+lengthdir_y(40*OGoblin.speedWalk,OGoblin.direction);
		targetX = tar_x  
		targetY = tar_y
		
			dir = point_direction(x,y,targetX,targetY-8);



		
	
		distanceTotal = 10000000;
		distanceRemaining = distanceTotal;
	peakHeight = min(max(0,distanceTotal - 64)*0.2,150);
			spd = 4.5;
	}	
	count=1
	}
	

	if (floor (image_index) ==4)
	{stateTarget= EnemySTATE.CHASE;
		sateWaitDuration = 15;
		state = EnemySTATE.WAIT;
count =0
	}
	

	


}
