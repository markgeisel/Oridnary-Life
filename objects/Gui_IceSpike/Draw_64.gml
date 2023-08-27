

if instance_exists(GUI_Menu){
	
	
	if global.icespike==1{
	draw_text_ext_transformed_color(105,74,global.icespike,10,16,0.75,0.75,0,c_black,c_black,c_black,c_black,100);
	}
	else{
draw_text_ext_transformed_color(x-101,y-147,global.icespike,10,16,0.75,0.75,0,c_black,c_black,c_black,c_black,100);
	}
draw_text_ext_transformed_color(x-94,y-147,"/5",10,16,0.75,0.75,0,c_black,c_black,c_black,c_black,100);
}


if position_meeting(mouse_x, mouse_y, Gui_IceSpike){


draw_set_font(Font4)

if global.icespike>=1
{
draw_text_ext_transformed_color(180,150,"Charge your attack for increased size and damage base 2.5/5/7.5/10/12.5 x1.2/x1.5/x2/x2.8/x4",22 ,450,0.4,0.4,0,c_black,c_black,c_black,c_black,100);

}
else 
draw_text_ext_transformed_color(180,150,"Charge your attack for increased size and damage   ",20,450,0.4,0.4,0,c_black,c_black,c_black,c_black,100);

draw_set_font(Text)
} 