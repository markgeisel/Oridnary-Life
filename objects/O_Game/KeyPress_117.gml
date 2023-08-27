/// @description Insert description here
// You can write your code in this editor
if ds_list_empty(global.IceDungeonFodder)==false{


ds_list_delete(global.IceDungeonFodder,  global.IceDungeonValue);


 global.IceDungeonValue = irandom(ds_list_size(global.IceDungeonFodder) - 1);
 
 global.IceDungeonValueUse = ds_list_find_value(global.IceDungeonFodder,  global.IceDungeonValue);
 
}

