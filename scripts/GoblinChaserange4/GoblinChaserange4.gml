function GoblinChaserange4() {
	sprite_index=sprMove
	target=OGoblin;
	if (instance_exists(target))

attacktimer++
{
	angle += 0.5;
	distance = 95
	
	;


	xTo = target.x;
	yTo= target.y;

	var _DistanceToGo = point_distance(x,y,xTo,yTo);
	image_speed =1.0;
	dir = point_direction(x,y,xTo,yTo);
	if (_DistanceToGo>Enemyspeed)
	
	{
	x = xTo + lengthdir_x(distance, angle);
y = yTo + lengthdir_y(distance, angle);
	}else{
x = xTo + lengthdir_x(distance, angle);
y = yTo + lengthdir_y(distance, angle);
	}
		
	if (hSpeed !=0) image_xscale = sign(hSpeed);

	}



	if (instance_exists(target))&&(point_distance(x,y,target.x,target.y)<= enemyAttackRadius)&&attacktimer>120
	{
	state= EnemySTATE.ATTACK;
	sprite_index=sprAttack;
	image_index=0;
	image_speed=1.0;
	attacktimer=0

	}

	enemytilecollsion();
}
