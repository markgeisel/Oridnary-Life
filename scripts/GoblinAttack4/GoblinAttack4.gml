function GoblinAttack4() { 



	


	if (floor(image_index)==  2)&& (count ==0)
	{with (instance_create_layer(x,y-20,"Instances",Potionvial))
	{	targetX = OGoblin.x;  
		targetY = OGoblin.y-20;
			distanceTotal = point_distance(x,y,targetX,targetY);
	magax=(OGoblin.hSpeed*OGoblin.hSpeed/2)
magay=(OGoblin.vSpeed*OGoblin.vSpeed/2)	
		
var tar_x = OGoblin.x+lengthdir_x(distanceTotal/2*(OGoblin.speedWalk*round(magax)),OGoblin.direction);
var tar_y = OGoblin.y+lengthdir_y(distanceTotal/2*(OGoblin.speedWalk*round(magay)),OGoblin.direction);




		targetX = tar_x  
		targetY = tar_y
		
	
		direction = point_direction(x,y,targetX,targetY-8);
	distanceTotal = point_distance(x,y,targetX,targetY);
		distanceRemaining = distanceTotal;
		peakHeight = min(max(0,distanceTotal - 32)*0.9,25);

			spd = 2;}
					 count =1
	}
	
	if (floor (image_index) ==10){
		stateTarget= EnemySTATE.CHASE;

		count=0 
		sateWaitDuration = 15;
		state = EnemySTATE.WAIT;
	}




	
}

