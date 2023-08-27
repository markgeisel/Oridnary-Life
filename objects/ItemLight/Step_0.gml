if instance_exists(target)
 
{

	var xp, yp;
xp = x;
yp = y;
	
z= target.z 

part_particles_create(global.partSystem1,random_range(x-10,x+10),random_range(y-10-z,y+10-z),global.pt_ItemEffect,1);


light[| eLight.X]=target.x
light[| eLight.Y]= target.y-target.z
}
if !instance_exists(target)
{ counter++
	
	if counter == 15
	
{
	instance_destroy()}
	}

