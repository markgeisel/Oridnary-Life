/// @description Insert description here
// You can write your code in this editor



if instance_exists(GUI_Menu){
if GUI_Menu.changepage==0  && global.page = 4 {

if(ItemRead != -1)&&global.gamePaused=true&&global.page==4{
	display_set_gui_size(1920,960)
	draw_sprite_stretched_ext(Sinventorybox2,0,view_get_xport(3)+30,view_get_yport(3)+650,105*3.5,35*5.625,c_white,image_alpha+0.2)
 
draw_text_ext_transformed_color(view_get_xport(3)+205,view_get_yport(3)+690," \n\n\n"+P_Collect.Ddec[ItemRead],10,100*2,size*2,size*2,0,c_black,c_black,c_black,c_black,image_alpha)/// @description Insert description here
draw_text_ext_transformed_color(view_get_xport(3)+205,view_get_yport(3)+680,P_Collect.Sdec[ItemRead],10,100*2.8,size*3,size*3,0,c_black,c_black,c_black,c_black,image_alpha)/// @description Insert description here

/// @description Insert description here
display_set_gui_size(384,192)
}
}}