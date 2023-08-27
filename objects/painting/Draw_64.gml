
 /// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

if GUI_Menu.changepage != 1 {
if global.page == 1 {

display_set_gui_size(1920,1080 );
draw_sprite(image478,-1,x,y+250)
draw_sprite(Sprite499,-1,x+852,y+1400)

draw_text(x+300,+250,y)

display_set_gui_size(384, 192);

}

display_set_gui_size(1920,1080 );

display_set_gui_size(384, 192);
}



if global.page == 1 && GUI_Menu.changepage = 0{
draw_sprite_ext(BorderEdge,GUI_Menu.n,camera_get_view_border_x(view_camera[3])+5,camera_get_view_border_y(view_camera[3])-20,1,1,0,c_white,100)
}