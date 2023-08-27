// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropItems(){


var items = array_length_1d(argument2);
	if (items>1)
{

var _angleperitem=360/items;
var _angle = random(360);
for (var i = 0; i < items; i++)
{

	with( instance_create_layer(argument0,argument1,"instances",argument2[i]))
	{	
		dir=_angle
		spd  = 0.25+ (items* 0.05)+random(0.50)
		}
_angle+=_angleperitem
}
}else instance_create_layer(argument0,argument1,"Instances",argument2[0]);





}