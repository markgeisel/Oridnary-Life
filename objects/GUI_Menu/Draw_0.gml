/// @description Insert description here
// You can write your code in this editor
if changepage != 1 {
draw_sprite_ext( sprite_index,frame,x+6,y-20,1,1,0,c_white,1)
}
draw_text(x+50,y+50,global.page)
draw_text(x+50,y+70,frame)
draw_text(x+50,y+60,changepage)