	if counter == 0 {
with instance_create_depth(x,y,-900,AttackLight5_1)
{target=other.id}
counter=1
}
image_angle = dir
xprevious = x;
	yprevious = y;
	if dir == 0{
	target=instance_nearest(x,y,P_Enemy) 

		targetX = target.x
		targetY = target.y-8
			dir = point_direction(x,y,targetX,targetY);
	}
	zprevious = z;
	distanceRemainingPrevious = distanceRemaining;
		hspeed = lengthdir_x(spd, dir);
	vspeed = lengthdir_y(spd, dir); 
	distanceRemaining = point_distance(x,y,targetX,targetY);
	percent = (distanceTotal-distanceRemaining) / distanceTotal;
	z = -peakHeight * sin(percent * pi);	
	if (distanceRemaining == 0)
	{
		var myTileX = ScreenPosToTileX(x,y);
		var myTileY = ScreenPosToTileY(x,y);
	}
		image_alpha -= 0.005;
	image_xscale *= 1;
	image_yscale = image_xscale;
	
	if image_alpha<0.05{
	instance_destroy()
	}

	
	
	//if (image_alpha <= 0) instance_destroy();
	