
if (keyboard_check_pressed(vk_escape)){ 

	
 global.gamePaused = !global.gamePaused;
 
 if global.gamePaused{ 
	  with (all){
		  Pausedimagespeed= image_speed;	
		  image_speed=0;
		  
		  
		  }
 }else{with (all)
	 {image_speed = Pausedimagespeed
	 }
 
 }
 } 	
if global.gamePaused{
	
if !instance_exists(GUI_Menu){ 
instance_create_layer(camera_get_view_x(view_camera[3]),camera_get_view_y(view_camera[3]),"Gui",GUI_Menu)
}}