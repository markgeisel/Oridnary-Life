/// @description Insert description here
// You can write your code in this editor





len = point_distance(OGoblin.x,OGoblin.y,x,y);
if counter == 0 {
with instance_create_depth(x,y,-900,AttackLight2)
{target=other.id}
counter=1
}

var nearest = instance_nearest(x,y,Player)
	if point_distance(x, y, targetX, targetY) >2
{
    move_towards_point(targetX, targetY, 2);
}  else{instance_create_layer(x,y,"instances",splash)
instance_destroy();
var xp, yp;
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_Potiondeath, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_gaussian);
part_emitter_burst(global.ps, global.pe_Potiondeath, global.pt_Potiondeath, 60);
}
var xp, yp;
xp = x;
yp = y;
part_emitter_region(global.ps, global.pe_Potion, xp-2, xp+2, yp-2+z, yp+2+z, ps_shape_rectangle, ps_distr_gaussian);
part_emitter_burst(global.ps, global.pe_Potion, global.pt_Potion, 1);

	distanceRemainingPrevious = distanceRemaining;
	
	distanceRemaining = point_distance(x,y,targetX,targetY); 
	percent = (distanceTotal-distanceRemaining) / distanceTotal;
	z = -peakHeight * sin(percent * pi);	

image_angle=dir
	yprevious = y;
	zprevious = z;
if direction<=90{
image_xscale= 1
image_yscale=1
dir -= angle_difference(dir,285) * (percent)/(distanceRemaining/(8*percent));
}
if direction<=270&&direction>=90{
image_xscale=-1
image_yscale=1
dir -= angle_difference(dir,-285) * (percent)/(distanceRemaining/(8*percent));
}

if direction>=270{
image_xscale= 1
image_yscale=1
dir -= angle_difference(dir,285) * (percent)/(distanceRemaining/(8*percent));
}




		
if speed == 0{
instance_destroy()
instance_create_layer(x,y,"instances",splash)}
	
		
		if y == targetX{
instance_destroy()
instance_create_layer(x,y,"instances",splash)}

if y == targetY{

instance_destroy()
instance_create_layer(x,y,"instances",splash)}