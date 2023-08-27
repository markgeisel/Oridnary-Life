/// @description Insert description here
// You can write your code in this editor



if global.gamePaused = false


{


if (Bounce_count !=0)


{
bounce += (pi * Bounce_speed);
if (bounce > pi )
{
bounce -=pi;
Bounce_height  *= 0.6;
Bounce_count--;


}
z= sin(bounce)*Bounce_height;
}
else z=0 ;
deteriorate++
if (deteriorate>deteriorateafter){

image_alpha-=1/deterioratetime;
if (image_alpha<=0){
instance_destroy()}
}
firc=0.05
if (z==0) fric=0.10 
x+= lengthdir_x(spd,dir)
y+= lengthdir_y(spd, dir) 
if (tilemap_get_at_pixel(collisionmap,x,y)>0)	spd=0;
spd=max(spd-fric,0)
}