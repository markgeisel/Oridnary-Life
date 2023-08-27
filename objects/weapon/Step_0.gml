/// @description Insert description here

if mouse_check_button_pressed(mb_right) 
{Sswing()}
x=round(OGoblin.x)
y=round(OGoblin.y-12)
image_angle=point_direction(OGoblin.x,OGoblin.y-20,mouse_x,mouse_y)
var display_dir = round(((OGoblin.direction) mod 360) / 90);

switch(display_dir){ 
case 0: depth=100; break;

case 1: depth=100;break;

case 2:  depth=100; break;

case 3:  depth=-400; break;

case 4: depth=100; break;}

