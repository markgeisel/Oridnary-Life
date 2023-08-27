
if changepage = 0{

sprite_index=_border482483483
}



if frame >= 6 {
changepage = 3 
sprite_index=_border482483483
 }
if i >= 4{ 

frame ++ 

i=0
}
if changepage = 1{i ++
	sprite_index=Sprite506
}



if global.page>1 { 
if keyboard_check_pressed(vk_left) && changepage = 0 {frame =0
	left = 1 	sprite_index=Sprite506
y= camera_get_view_y(view_camera[3])


changepage = 1 

}if changepage=3&&left=1{ frame = 0 global.page  -- 	

	changepage=0
	left = 0 
	}

}
if global.page == 1 {
if keyboard_check_pressed(vk_left) && changepage = 0 {frame =0
	left1 = 1 	sprite_index=Sprite506
y= camera_get_view_y(view_camera[3])
changepage = 1 





}
if changepage=3&&left1=1{
	frame=0
	changepage=0
	left1 = 0 global.page =4}
	
}

if global.page==4{
if keyboard_check_pressed(vk_right) {
	
global.page  =0 
y= camera_get_view_y(view_camera[3])
}}

if global.page < 4 {
if keyboard_check_pressed(vk_right) {
		
global.page ++
y= camera_get_view_y(view_camera[3])
}

}


if mouse_check_button_released(mb_right){

y=camera_get_view_y(view_camera[3])



}


if (y <= 140) && (y >= 60){n=0}
if (y <= 95) && (y >= -140){n=1}
if (y <= 50) && (y >= -340){n=2}
if (y <= 5) && (y >= -540){n=3}
if (y <= -40) && (y >= -740){n=4}
if (y <= -95) && (y >= -940){n=5}
if (y <= -140) {n=6}


if global.page = 1{ if changepage = 0 {frame = 0 }
image_index=0
	
if !instance_exists(painting)
{
instance_create_layer(camera_get_view_x(view_camera[3]),camera_get_view_y(view_camera[3]),"Gui",painting)
}
if !instance_exists(painting1)
{
instance_create_layer(camera_get_view_x(view_camera[3]),camera_get_view_y(view_camera[3])+25,"Gui",painting1)}}




if global.page = 2{if changepage = 0 {frame = 1}
image_index=1

if !instance_exists(painting2)
{
instance_create_layer(camera_get_view_x(view_camera[3]),camera_get_view_y(view_camera[3])+25,"Gui",painting2)}


	
if !instance_exists(GUI_SnowTrail){instance_create_layer(camera_get_view_x(view_camera[3])+135,camera_get_view_y(view_camera[3])+115,"Gui",GUI_SnowTrail)}
if !instance_exists(GUI_Iceeye){instance_create_layer(camera_get_view_x(view_camera[3])+136,camera_get_view_y(view_camera[3])+50,"Gui",GUI_Iceeye)}
if !instance_exists(Gui_Iceskills){instance_create_layer(camera_get_view_x(view_camera[3])+137,camera_get_view_y(view_camera[3])+82,"Gui",Gui_Iceskills)}
if !instance_exists(Gui_IceSpike){instance_create_layer(camera_get_view_x(view_camera[3])+137,camera_get_view_y(view_camera[3])+82,"Gui",Gui_IceSpike)}
	
if !instance_exists(GUI_Menuborder){instance_create_layer(camera_get_view_x(view_camera[3]),camera_get_view_y(view_camera[3]),"Gui_1",GUI_Menuborder)}
}

if global.page = 3{if changepage = 0 {frame = 1 }
image_index=1

	
if !instance_exists(painting4){instance_create_layer(camera_get_view_x(view_camera[3])+135,camera_get_view_y(view_camera[3])+115,"Gui",painting4)}
}

if global.page=4 {if changepage = 0 {frame = 1 }

image_index=1
if !instance_exists(painting3)
{
instance_create_layer(camera_get_view_x(view_camera[3]),camera_get_view_y(view_camera[3])+25,"Gui",painting3)}

}