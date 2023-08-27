// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Playerstate_dead(){
	

	hSpeed =0
	vSpeed =0 
	if (sprite_index != Mage_Death) && (sprite_index !=Mage_hurt){
	
	sprite_index = Mage_hurt ;
	image_index=0;
	image_speed=0.7;

	}
if (image_index + image_speed > image_number)
{
if (sprite_index == Mage_hurt)
{
image_speed= max (0,image_speed-0.03); 
if (image_speed < 0.07)
{
image_index=0;
sprite_index = Mage_Death
image_speed =1;
		invulnerable=400

}
}
else{image_speed=0; 
	image_index=image_number- 1 ; 
	

	LoadGame(global.gamesaveslot)
	state=Playerstate_free


}
}
}