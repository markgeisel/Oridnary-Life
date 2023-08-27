
if instance_exists(GUI_Menu){
draw_text_ext_transformed_color(x-101,y-147,global.iceeye,10,16,0.75,0.75,0,c_black,c_black,c_black,c_black,100);

draw_text_ext_transformed_color(x-93,y-147,"/3",10,16,0.75,0.75,0,c_black,c_black,c_black,c_black,100);
}

if position_meeting(mouse_x, mouse_y, GUI_Iceeye){

draw_set_font(Font4 )
draw_text_ext_transformed_color(180,140,"Ice eye: Create a proctecting Ice eye level 1: Can attack every two seconds and last fifteen second, deals 5 damage over 10 hits dies at max hits",20,450,0.4,0.4,0,c_black,c_black,c_black,c_black,100);

draw_set_font(Text)
}