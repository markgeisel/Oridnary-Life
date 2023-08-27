if keyboard_check(vk_down)&&y<=posy+148{y++}
if keyboard_check(vk_up)&&y>=posy-150{y--}

if (global.gamePaused = true) && n=1 && global.page = 4 
{
x=camera_get_view_x(view_camera[3])+83
y=camera_get_view_y(view_camera[3])+150
posy=y-150
n=0
}


if global.page != 4 {
x= -100000
n=1
}
if global.gamePaused= false 
{x= -100000
	n=1
	}