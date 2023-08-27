surfminimapbg=-1;
surfminimapEntities=-1;

h = 1568/tile_size
w= 1632/tile_size

t=0
function refreshmap()
{
surfminimapbg = surface_create(w,h)
var _surftemp = surface_create(1632,1568)
surface_set_target(_surftemp)
draw_clear(13312) 
draw_tilemap(layer_tilemap_get_id(layer_get_id("cull")),0,0);
surface_reset_target()
surface_set_target(surfminimapbg)
draw_surface_stretched(_surftemp,0,0,w,h);
surface_reset_target()
surface_free(_surftemp)

}

refreshmap()