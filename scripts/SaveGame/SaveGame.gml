// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame(){
var _map=ds_map_create();
_map[?"room"]=room;
_map[?"playerhealth" ]= global.playerhealth
_map[?"playerhealthmax" ]= global.Maxplayerhealth
_map[?"targetx" ]= global.targetx
_map[?"targety" ]= global.targety
_map[?"level" ]= global.playerlevel
_map[?"exp" ]= global.playerexp
_map[?"skillpoints"]= global.playerskillpoints
_map[?"init"]=global.playerexist
_map[?"Inv"]=json_stringify(global.inventory) 
_map[?"Eqp"]=json_stringify(global.equip) 
var _string= json_encode(_map);
savestringtofile("save"+string(global.gamesaveslot)+".sav",_string);
ds_map_destroy(_map);
show_debug_message("game saved!");

}



function savestringtofile(_filename,_string)
{
var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1,);
buffer_write(_buffer,buffer_string,_string);
buffer_save(_buffer,_filename);
buffer_delete(_buffer);

}