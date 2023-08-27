depth=-bbox_bottom
dir = point_direction(x,y,OGoblin.x,OGoblin.y)
z =   15 +sin(get_timer()/500000)*3;

var display_dir = round(((dir) mod 360) / 30);


switch(display_dir)
{
case 1 : index = 12 break;
case 2 : index = 1 break; 
case 3 : index = 2 break;
case 4 : index = 3 break; 
case 5 : index = 4 break;
case 6 : index = 5 break;
case 7 : index = 6 break;
case 8 : index = 7 break;
case 9 : index = 8 break;
case 10: index= 9 break;
case 11: index= 10 break;
case 12: index= 11 break; 


}