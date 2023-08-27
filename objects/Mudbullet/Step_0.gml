/// @description Insert description here
// You can write your code in this editormudballlevel=global.Pressure


if counter == 0 {
with instance_create_depth(x,y,-850,AttackLight8)
{target=other.id}

counter=1
}
if Particle == 0{
part_particles_create(global.ps,(x),(y),global.pt_MudBulleteffect,1);

}
Particle++
if Particle >= 5 
{
Particle=0

}
xprevious = x;
	yprevious = y;
	zprevious = z;
	distanceRemainingPrevious = distanceRemaining;
	
 
	distanceRemaining = point_direction(x,y,targetX,targetY);
	hspeed = lengthdir_x(spd, dir);
	vspeed = lengthdir_y(spd, dir); 

if (point_distance(x, y, xstart, ystart) > range) {
				var xp, yp;
xp = x;
yp = y;
image_speed=1
	
sprite=MudBullet1


if image_index>=3.5 {
instance_destroy()
part_particles_create(global.ps,(x),(y),global.pt_MudBulleteffect1,10);
}

	}

	percent = (distanceTotal-distanceRemaining) / distanceTotal;
	z = -peakHeight * sin(percent * pi);	

		image_alpha -= 0.005;
	image_xscale *= 1;




	
	
	//if (image_alpha <= 0) instance_destroy();
	