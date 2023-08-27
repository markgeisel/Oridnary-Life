/// @description Insert description here
// You can write your code in this editor


part_particles_create(global.partSystem1,random_range(x-10,x+10),random_range(y-10-z,y+10-z),global.pt_ItemEffect,1);

if count=0{
with instance_create_layer(x,y,"lighting",AssetLight1){
target=other.id
}
	with instance_create_layer(x,y,"Instances",PartSpawner_item)
{target=other.id}

	with instance_create_layer(x,y,"Instances",PartSpawner_item)
{target=other.id}
counter=1
}
count++
