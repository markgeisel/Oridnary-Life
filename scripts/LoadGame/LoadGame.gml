// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadGame(_slot){
instance_destroy(Oinventory)

global.gamesaveslot=_slot
var _file = "save"+string(global.gamesaveslot)+".sav";
if (file_exists(_file))
{
var _json= LoadJSONFromFile(_file);

global.playerhealth=_json[?"playerhealth"];
	global.Maxplayerhealth=_json[?"playerhealthmax"];
	global.targetx=_json[?"targetx"];
global.targety=_json[?"targety"];
global.playerlevel=_json[?"level"];
 global.playerexp=_json[?"exp"];
global.playerskillpoints=_json[?"skillpoints"]
global.playerexist_map=_json[?"init"]
instance_destroy(O_menu)
global.targetx=300				
global.targety=235
global.inventory = _json[?"Inv"]
global.equip = _json[?"Eqp"]
RoomTransition(Trans_type.FADE,_json[?"room"]);
instance_destroy(Oinventory)

global.equip =json_parse(global.equip) 
global.inventory =json_parse(global.inventory) 
ds_map_destroy(_json); 


return true;
}else{

show_debug_message("no save in this slot");
return false;
 }
}

function LoadJSONFromFile(_filename)
{
var _buffer = buffer_load(_filename);
var _string = buffer_read(_buffer , buffer_string);
buffer_delete(_buffer);
var _json = json_decode(_string);
return _json

}