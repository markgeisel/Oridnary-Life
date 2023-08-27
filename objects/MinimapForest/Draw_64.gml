/// @description Insert description here
// You can write your code in this editor



if (!surface_exists(surfminimapbg)) refreshmap();
draw_surface(surfminimapbg,x+324,y+1)
draw_sprite_stretched(Minimapborder487,0,x+322,y-1,w+3,h+4)

if (!surface_exists(surfminimapEntities)) surfminimapEntities = surface_create(w,h);
surface_set_target(surfminimapEntities);
draw_clear_alpha(2827812,0.0);
with (P_Enemy)
{
	if (minimap == true) draw_sprite_ext(
	
	Pixel,
	0,
	x/tile_size,
	y/tile_size,
	1,
	1,
	0,
	c_red,
	1
	)

}
surface_reset_target();
draw_surface(surfminimapEntities,x+324,y+1)


var _vx = camera_get_view_x(view_camera[3]) / tile_size
var _vy = camera_get_view_y(view_camera[3]) / tile_size

draw_sprite_stretched(

Minimapborder,-1,_vx+324,_vy+1,384/tile_size,192/tile_size	
);


