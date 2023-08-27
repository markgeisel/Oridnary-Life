// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function initialize_all()
{global.layer_tileset = layer_get_id("layer_tileset")
global.tilemap = layer_tilemap_get_id(global.layer_tileset)

global.tilemap_w= tilemap_get_width(global.tilemap)
global.tilemap_h=tilemap_get_height(global.tilemap)}

