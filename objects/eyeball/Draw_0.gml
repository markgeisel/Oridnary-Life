/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(Sfireball,index,x,floor(y+z),1,1,0,c_white,100)
var display_dir = round(((dir) mod 360) / 30);
draw_text(x,y-20,display_dir)


