/// @description Insert description here
// You can write your code in this editor

if spawn = 1 {
if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)<= 100)
{
with instance_create_layer(x,y,"Barrier",Object283){
 target=id


}
spawn=2
}
} 
