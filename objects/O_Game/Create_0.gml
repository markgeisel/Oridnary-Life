  gameend=0
randomize();

function pseudo_game_restart() {
	// This will destroy all instances. 
	// Yes, this will run their cleanup events as well as well as their destroy event.
	with(all) {
		// Executes the instance game end event, if any
		event_perform(ev_other, ev_game_end);
		instance_destroy();	
	}

	audio_stop_all();

	// Go to the very first room, as per room order
	room_goto(room_first);
  
	// Some internal system that tells instances to run game start event, 
	// upon going to the very first room.
	// call_later, which was later introduced in 2022.8, will suffice.
	call_later(1, time_source_units_frames, function() {
		with(all) {
			event_perform(ev_other, ev_game_start);	 
		}
	});
}


gc_enable(true);
//particle creation 
#region 
//fireball exlpode
global.ps = part_system_create();
part_system_depth(global.ps, -150);



global.partSystem = part_system_create();
part_system_depth(global.partSystem,-150)



global.partSystem1 = part_system_create();
#region

//NewEffect1 Particle System

part_system_depth(global.partSystem1,-700)
//Effect
global.pt_Effect1 = part_type_create();
part_type_shape(global.pt_Effect1, pt_shape_explosion);
part_type_sprite(global.pt_Effect1, spr_pt_shape_explosion_new, 0, 0, 0);
part_type_size(global.pt_Effect1, 0.05, 0.10, 0, 0);
part_type_scale(global.pt_Effect1, 1, 1);
part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect1, 65535, 4235519, 255);
part_type_alpha3(global.pt_Effect1, 0.5, 1, 0.5);
part_type_blend(global.pt_Effect1, 0);
part_type_life(global.pt_Effect1, 20, 20);
part_type_speed(global.pt_Effect1, 0.10, 1, 0, 0);
part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect1, 0, 0);

//Effect2
global.pt_Effect2 = part_type_create();
part_type_shape(global.pt_Effect2, pt_shape_cloud);
part_type_sprite(global.pt_Effect2, spr_pt_shape_cloud_new, 0, 0, 0);
part_type_size(global.pt_Effect2, 0.05,  0.10, 0, 0);
part_type_scale(global.pt_Effect2, 1, 1);
part_type_orientation(global.pt_Effect2, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect2, 16777215, 12632256, 16777215);
part_type_alpha3(global.pt_Effect2, 1, 0.5, 0.25);
part_type_blend(global.pt_Effect2, 0);
part_type_life(global.pt_Effect2, 85, 90);
part_type_speed(global.pt_Effect2, 0, 0, 0, 0);
part_type_direction(global.pt_Effect2, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect2, 0, 0);

//Effect3
global.pt_Effect3 = part_type_create();
part_type_shape(global.pt_Effect3, pt_shape_pixel);
part_type_sprite(global.pt_Effect3, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_Effect3, 1, 1, 0, 0);
part_type_scale(global.pt_Effect3, 1, 1);
part_type_orientation(global.pt_Effect3, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect3, 65535, 4235519, 255);
part_type_alpha3(global.pt_Effect3, 1, 1, 1);
part_type_blend(global.pt_Effect3, 1);
part_type_life(global.pt_Effect3, 30, 35);
part_type_speed(global.pt_Effect3, 1, 1, 0, 0);
part_type_direction(global.pt_Effect3, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect3, 0.01, 263);

//Linking Particle Types together (Death and Step)
part_type_death(global.pt_Effect1, 1, global.pt_Effect2);

//NewEffect1 Emitters
global.pe_Effect1 = part_emitter_create(global.ps);
global.pe_Effect3 = part_emitter_create(global.ps);

//NewEffect1 emitter positions. Streaming or Bursting Particles.

#endregion
//dust 
#region
var _p= part_type_create();


part_type_shape(_p,pt_shape_disk)
part_type_life(_p,20,40);
part_type_alpha3(_p,0 ,0.3,0)
part_type_size(_p,0.01,0.05,0.001,0.001)
part_type_speed(_p,0.05,0.1,0.01,0.01)
part_type_color_mix(_p,c_ltgray,c_white)
if instance_exists(OGoblin){
part_type_direction(_p,OGoblin.direction-190,OGoblin.direction-160,0.1,0.1)
}
global.ptBasic = _p

#endregion
//smoke
#region
var _p1= part_type_create();


part_type_shape(_p1,pt_shape_smoke)
part_type_life(_p1,40,100);
part_type_alpha3(_p1,0 ,0.15,0)
part_type_size(_p1,0.01,0.05,0.001,0.001)
part_type_speed(_p1, 0.025,0.05,0.005,0.005)
part_type_color_mix(_p1,c_ltgray,c_white)

part_type_direction(_p1,80,100,0.1,0.1)

global.ptBasic1 = _p1

#endregion
//firetrail
#region
var _p2= part_type_create();


part_type_shape(_p2,pt_shape_smoke)
part_type_life(_p2,20,60);
part_type_alpha3(_p2,0 ,0.3,0)
part_type_size(_p2,0.01,0.05,0.001,0.001)
part_type_speed(_p2, 0.025,0.05,0.005,0.005)
part_type_color_mix(_p2,c_yellow,c_red)
if instance_exists(enemyflamethrower){
part_type_direction(_p2,enemyflamethrower.dir-170,enemyflamethrower.dir-190,0.1,0.1)
}
global.ptBasic2 = _p2

#endregion
// icetrail 
#region
var _p3= part_type_create();


part_type_shape(_p3,pt_shape_flare)
part_type_life(_p3,20,60);
part_type_alpha3(_p3,0 ,0.3,0)
part_type_size(_p3,0.0125,0.025,0.001,0.001)
part_type_speed(_p3, 0.025,0.05,0.005,0.005)
part_type_color_mix(_p3,c_blue,c_teal)

part_type_direction(_p3,80,100,0.1,0.1)

global.ptBasic3 = _p3

#endregion

//lightningbolt
#region
var _p4= part_type_create();


part_type_shape(_p4,pt_shape_spark)
part_type_life(_p4,20,60);
part_type_alpha3(_p4,0 ,0.4,0)
part_type_size(_p4,0.05,0.20,0.001,0.001)
part_type_speed(_p4, 0.01,0.015,0.01,0.01)
part_type_color_mix(_p4,c_aqua,c_white)
part_type_direction(_p4,0,360,0.1,0.1)

global.ptBasic4 = _p4

#endregion
//snow
#region
//NewEffect Particle System



//NewEffect Particle Types
//Snow
global.pt_Snow = part_type_create();
part_type_shape(global.pt_Snow, pt_shape_snow);
part_type_size(global.pt_Snow, 0.30, 0.30, 0, 0);
part_type_scale(global.pt_Snow, 0.30, 0.30);
part_type_orientation(global.pt_Snow, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Snow, 16777215, 12632256, 16777215);
part_type_alpha3(global.pt_Snow, 1, 1, 1);
part_type_blend(global.pt_Snow, 1);
part_type_life(global.pt_Snow, 30, 50);
part_type_speed(global.pt_Snow, 1 ,2, 0, 0);
part_type_direction(global.pt_Snow, 270, 290, 0, 0);
part_type_gravity(global.pt_Snow, 0, 273);

//snow_fade
global.pt_snow_fade = part_type_create();
part_type_shape(global.pt_snow_fade, pt_shape_pixel);
part_type_sprite(global.pt_snow_fade, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_snow_fade, 1.5, 2, 0, 0);
part_type_scale(global.pt_snow_fade, 1, 1);
part_type_orientation(global.pt_snow_fade, 0, 0, 0, 0, 0);
part_type_color3(global.pt_snow_fade, 16777215, 12632256, 16777215);
part_type_alpha3(global.pt_snow_fade, 1, 1, 1);
part_type_blend(global.pt_snow_fade, 0);
part_type_life(global.pt_snow_fade, 150, 170);
part_type_speed(global.pt_snow_fade, 0, 0, 0, 0);
part_type_direction(global.pt_snow_fade, 0, 360, 0, 0);
part_type_gravity(global.pt_snow_fade, 0, 0);

//Linking Particle Types together (Death and Step)
part_type_death(global.pt_Snow, 2, global.pt_snow_fade);

//NewEffect Emitters
global.pe_Snow = part_emitter_create(global.ps);
#endregion
//rain
#region

//rain
global.pt_rain = part_type_create();
part_type_shape(global.pt_rain, pt_shape_snow);
part_type_size(global.pt_rain, 0.150, 0.150, 0, 0);
part_type_scale(global.pt_rain, 0.30, 0.30);
part_type_orientation(global.pt_rain, 0, 0, 0, 0, 0);
part_type_color3(global.pt_rain, 16744576, 12615680, 16711680);
part_type_alpha3(global.pt_rain, 1, 1, 1);
part_type_blend(global.pt_rain, 1);
part_type_life(global.pt_rain, 30, 50);
part_type_speed(global.pt_rain, 3, 5, 0, 0);
part_type_direction(global.pt_rain, 297, 315, 0, 0);
part_type_gravity(global.pt_rain, 0, 273);

//snow_fade
global.pt_snow_fade = part_type_create();
part_type_shape(global.pt_snow_fade, pt_shape_pixel);
part_type_sprite(global.pt_snow_fade, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_snow_fade, 0.50, 1, 0, 0);
part_type_scale(global.pt_snow_fade, 1, 1);
part_type_orientation(global.pt_snow_fade, 0, 0, 0, 0, 0);
part_type_color3(global.pt_snow_fade, 16777215, 12632256, 16777215);
part_type_alpha3(global.pt_snow_fade, 1, 1, 1);
part_type_blend(global.pt_snow_fade, 0);
part_type_life(global.pt_snow_fade, 30, 60);
part_type_speed(global.pt_snow_fade, 0, 0, 0, 0);
part_type_direction(global.pt_snow_fade, 0, 360, 0, 0);
part_type_gravity(global.pt_snow_fade, 0, 0);

//Linking Particle Types together (Death and Step)
part_type_death(global.pt_rain, 1, global.pt_snow_fade);

//NewEffect Emitters
global.pe_rain = part_emitter_create(global.ps);

#endregion
//iceball
#region
global.pt_snowball = part_type_create();
part_type_shape(global.pt_snowball, pt_shape_pixel);
part_type_sprite(global.pt_snowball, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_snowball, 1, 1, 0, 0);
part_type_scale(global.pt_snowball, 1, 1);
part_type_orientation(global.pt_snowball, 0, 0, 0, 0, 0);
part_type_color3(global.pt_snowball, c_black, c_aqua, 16711680);
part_type_alpha3(global.pt_snowball, 1, 1, 1);
part_type_blend(global.pt_snowball, 0);
part_type_life(global.pt_snowball, 40, 45);
part_type_speed(global.pt_snowball, .25, .25, 0, 0);
part_type_direction(global.pt_snowball, 0, 360, 0, 0);
part_type_gravity(global.pt_snowball, 0.025, 270);

//Effect2
global.pt_snowball2 = part_type_create();
part_type_shape(global.pt_snowball2, pt_shape_cloud);
part_type_sprite(global.pt_snowball2, spr_pt_shape_cloud_new, 0, 0, 0);
part_type_size(global.pt_snowball2, 0.5, 0.5, 0, 0);
part_type_scale(global.pt_snowball2, 1, 1);
part_type_orientation(global.pt_snowball2, 0, 0, 0, 0, 1);
part_type_color3(global.pt_snowball2, 16777215, 12632256, 16777215);
part_type_alpha3(global.pt_snowball2, 0.25, 0.2, 0.1);
part_type_blend(global.pt_snowball2, 0);
part_type_life(global.pt_snowball2, 50, 90);
part_type_speed(global.pt_snowball2, 0.10, 0.10, 0, 0);
part_type_direction(global.pt_snowball2, 0, 360, 0, 0);
part_type_gravity(global.pt_snowball2, 0, 0);

//NewEffect Emitters
global.pe_snowball = part_emitter_create(global.ps);
global.pe_snowball2 = part_emitter_create(global.ps);
#endregion
//snowball
#region

global.pt_playersnowball = part_type_create();
part_type_shape(global.pt_playersnowball, pt_shape_pixel);
part_type_sprite(global.pt_playersnowball, spr_pt_shape_pixel, 0, 0, 0);
part_type_size(global.pt_playersnowball, 0.5, 1, 0, 0);
part_type_scale(global.pt_playersnowball, 1, 1);
part_type_orientation(global.pt_playersnowball, 0, 0, 0, 0, 0);
part_type_color3(global.pt_playersnowball, c_white, 16777215, c_ltgrey);
part_type_alpha3(global.pt_playersnowball, 1, 1, 1);
part_type_blend(global.pt_playersnowball, 0);
part_type_life(global.pt_playersnowball, 40, 50);
part_type_speed(global.pt_playersnowball, 0.20, 0.30, 0, 0);
part_type_direction(global.pt_playersnowball, 0, 360, 0, 0);
part_type_gravity(global.pt_playersnowball, 0.01, 270);

//NewEffect Emitters
global.pe_playersnowball = part_emitter_create(global.ps);

//NewEffect emitter positions. Streaming or Bursting Particles.

//Destroying Emitters
//part_emitter_destroy(global.ps, global.pe_playersnowball);

#endregion
//potiontrail
#region
global.pt_Potion = part_type_create();
part_type_shape(global.pt_Potion, pt_shape_pixel);
part_type_sprite(global.pt_Potion, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_Potion, 1, 1, 0, 0);
part_type_scale(global.pt_Potion, 1, 1);
part_type_orientation(global.pt_Potion, -356, 6, 0, 0, 0);
part_type_color3(global.pt_Potion, 16744703, 16711935, 16711808)
part_type_alpha3(global.pt_Potion, 1, 1, 1);
part_type_blend(global.pt_Potion, 0);
part_type_life(global.pt_Potion, 20, 40);
part_type_speed(global.pt_Potion, 0.50, 0.50, 0, 0);
part_type_direction(global.pt_Potion, 131, 246, 0, 0);
part_type_gravity(global.pt_Potion, 0.02, 273);

//NewEffect Emitters
global.pe_Potion = part_emitter_create(global.ps);

//NewEffect emitter positions. Streaming or Bursting Particles.


#endregion
#region
//NewEffect Particle Types
//Potiondeath
global.pt_Potiondeath = part_type_create();
part_type_shape(global.pt_Potiondeath, pt_shape_pixel);
part_type_sprite(global.pt_Potiondeath, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_Potiondeath, 1, 1, 0, 0);
part_type_scale(global.pt_Potiondeath, 1, 1);
part_type_orientation(global.pt_Potiondeath, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Potiondeath, 16744703, 16711935, 16711808)
part_type_alpha3(global.pt_Potiondeath, 1, 1, 1);
part_type_blend(global.pt_Potiondeath, 0);
part_type_life(global.pt_Potiondeath, 40, 80);
part_type_speed(global.pt_Potiondeath, 0.2, 0.8, 0, 0);
part_type_direction(global.pt_Potiondeath, 0, 360, 0, 0);
part_type_gravity(global.pt_Potiondeath, 0, 270);

//NewEffect Emitters
global.pe_Potiondeath = part_emitter_create(global.ps);
#endregion
//death
#region
//Effect1
global.pt_EffectDeath = part_type_create();
part_type_shape(global.pt_EffectDeath, pt_shape_disk);
part_type_sprite(global.pt_EffectDeath, spr_pt_shape_disk_new, 0, 0, 0);
part_type_size(global.pt_EffectDeath, 0.10, 0.10, 0, 0);
part_type_scale(global.pt_EffectDeath, 0.20, 0.20);
part_type_orientation(global.pt_EffectDeath, 0, 0, 0, 0, 1);
part_type_color3(global.pt_EffectDeath, 65535, 4235519, 255);
part_type_alpha3(global.pt_EffectDeath, 1, 1, 1);
part_type_blend(global.pt_EffectDeath, 1);
part_type_life(global.pt_EffectDeath, 20, 20);
part_type_speed(global.pt_EffectDeath, 5, 5, 0, 0);
part_type_direction(global.pt_EffectDeath, 0, 360, 0, 0);
part_type_gravity(global.pt_EffectDeath, 0.20, 269);

//NewEffect Emitters
global.pe_EffectDeath = part_emitter_create(global.ps);

#endregion
#region
//MudBulleteffect
global.pt_MudBulleteffect = part_type_create();
part_type_shape(global.pt_MudBulleteffect, pt_shape_pixel);
part_type_sprite(global.pt_MudBulleteffect, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_MudBulleteffect, 1, 1, 0, 0);
part_type_scale(global.pt_MudBulleteffect, 1, 1);
part_type_orientation(global.pt_MudBulleteffect, 0, 0, 0, 0, 0);
part_type_color3(global.pt_MudBulleteffect, 4210816, 128, 0);
part_type_alpha3(global.pt_MudBulleteffect, 1, 1, 1);
part_type_blend(global.pt_MudBulleteffect, 0);
part_type_life(global.pt_MudBulleteffect, 20, 40);
part_type_speed(global.pt_MudBulleteffect, 0.1, 0.5, 0, 0);
part_type_direction(global.pt_MudBulleteffect, 140, 220, 0, 0);
part_type_gravity(global.pt_MudBulleteffect, 0.03, 268);

//NewEffect Emitters
global.pe_MudBulleteffect = part_emitter_create(global.ps);

//NewEffect emitter positions. Streaming or Bursting Particles.
//var xp, yp;
//xp = x;
//yp = y;
//part_emitter_region(global.ps, global.pe_MudBulleteffect, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_MudBulleteffect, global.pt_MudBulleteffect, 1);

//Destroying Emitters

#endregion
#region
global.pt_MudBulleteffect1 = part_type_create();
part_type_shape(global.pt_MudBulleteffect1, pt_shape_pixel);
part_type_sprite(global.pt_MudBulleteffect1, spr_pt_shape_pixel_new, 0, 0, 0);
part_type_size(global.pt_MudBulleteffect1, 1, 1, 0, 0);
part_type_scale(global.pt_MudBulleteffect1, 1, 1);
part_type_orientation(global.pt_MudBulleteffect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_MudBulleteffect1, 4210816, 128, 0);
part_type_alpha3(global.pt_MudBulleteffect1, 1, 1, 1);
part_type_blend(global.pt_MudBulleteffect1, 0);
part_type_life(global.pt_MudBulleteffect1, 30, 40);
part_type_speed(global.pt_MudBulleteffect1, 0.2, 0.4, 0, 0);
part_type_direction(global.pt_MudBulleteffect1, 0, 174, 0, 0);
part_type_gravity(global.pt_MudBulleteffect1, 0.025, 268);

//NewEffect Emitters
global.pe_MudBulleteffect1 = part_emitter_create(global.ps);

//NewEffect emitter positions. Streaming or Bursting Particles.
//var xp, yp;
//xp = x;
//yp = y;
//part_emitter_region(global.ps, global.pe_MudBulleteffect1, xp-8, xp+8, yp-8, yp+8, ps_shape_rectangle, ps_distr_linear);
//part_emitter_burst(global.ps, global.pe_MudBulleteffect1, global.pt_MudBulleteffect1, 1);

//Destroying Emitters
//part_emitter_destroy(global.ps, global.pe_MudBulleteffect1);
#endregion

#region

//ItemEffect
global.pt_ItemEffect = part_type_create();
part_type_shape(global.pt_ItemEffect, pt_shape_pixel);
part_type_size(global.pt_ItemEffect, 1, 1, 0, 0);
part_type_scale(global.pt_ItemEffect, 1, 1);
part_type_orientation(global.pt_ItemEffect, 0, 0, 0, 0, 0);
part_type_color3(global.pt_ItemEffect, 16777215, 12632256, 8421504);
part_type_alpha3(global.pt_ItemEffect, 0.7, 0.4, 0.1);
part_type_blend(global.pt_ItemEffect, 0);
part_type_life(global.pt_ItemEffect, 15, 35);
part_type_speed(global.pt_ItemEffect, 0.15, 0.25, 0, 0);
part_type_direction(global.pt_ItemEffect, 0, 360, 0, 0);
part_type_gravity(global.pt_ItemEffect, 0.025, 270);

//NewEffect Emitters
global.pe_ItemEffect = part_emitter_create(global.partSystem1);



//NewEffect emitter positions. Streaming or Bursting Particles.


#endregion

#endregion

global.IceDungeonFodder=ds_list_create()



ds_list_add(global.IceDungeonFodder, 1);
ds_list_add(global.IceDungeonFodder, 2);
ds_list_add(global.IceDungeonFodder, 3);
ds_list_add(global.IceDungeonFodder, 4);
ds_list_add(global.IceDungeonFodder, 5);
ds_list_add(global.IceDungeonFodder, 6);
ds_list_add(global.IceDungeonFodder, 7);
ds_list_add(global.IceDungeonFodder, 8);
ds_list_add(global.IceDungeonFodder, 9);
ds_list_add(global.IceDungeonFodder, 10);
ds_list_add(global.IceDungeonFodder, 11);
ds_list_add(global.IceDungeonFodder, 12);
ds_list_add(global.IceDungeonFodder, 13);


 global.IceDungeonValue = irandom(ds_list_size(global.IceDungeonFodder) - 1);
 global.IceDungeonValueUse = ds_list_find_value(global.IceDungeonFodder, global.IceDungeonValue);
 










global.IceDungeonMiniBoss=ds_list_create()

ds_list_add(global.IceDungeonMiniBoss,1)
ds_list_add(global.IceDungeonMiniBoss,2)
ds_list_add(global.IceDungeonMiniBoss,3)




global.IceDungeonMiniBossvalue=irandom(ds_list_size(global.IceDungeonMiniBoss) - 1);
 global.IceDungeonMiniBossValueUse = ds_list_find_value(global.IceDungeonMiniBoss, global.IceDungeonMiniBossvalue);


global.FireDungeonFodder=ds_list_create()



ds_list_add(global.FireDungeonFodder, 1);


 global.FireDungeonValue = irandom(ds_list_size(global.FireDungeonFodder) - 1);
 global.FireDungeonValueUse = ds_list_find_value(global.FireDungeonFodder, global.FireDungeonValue);
 


global.FireDungeonMiniBoss=ds_list_create()

ds_list_add(global.FireDungeonMiniBoss,1)


global.FireDungeonMiniBossvalue=irandom(ds_list_size(global.FireDungeonMiniBoss) - 1);
 global.FireDungeonMiniBossValueUse = ds_list_find_value(global.FireDungeonMiniBoss, global.FireDungeonMiniBossvalue);


global.LightningDungeonMiniBoss=ds_list_create()

ds_list_add(global.LightningDungeonMiniBoss,1)


global.LightningDungeonMiniBossvalue=irandom(ds_list_size(global.LightningDungeonMiniBoss) - 1);
 global.LightningDungeonMiniBossValueUse = ds_list_find_value(global.LightningDungeonMiniBoss, global.LightningDungeonMiniBossvalue);


global.LightningDungeonFodder=ds_list_create()



ds_list_add(global.LightningDungeonFodder, 1);


 global.LightningDungeonValue = irandom(ds_list_size(global.LightningDungeonFodder) - 1);
 global.LightningDungeonValueUse = ds_list_find_value(global.LightningDungeonFodder, global.LightningDungeonValue);
 













global.EarthDungeonMiniBoss=ds_list_create()

ds_list_add(global.EarthDungeonMiniBoss,1)


global.EarthDungeonMiniBossvalue=irandom(ds_list_size(global.EarthDungeonMiniBoss) - 1);
 global.EarthDungeonMiniBossValueUse = ds_list_find_value(global.EarthDungeonMiniBoss, global.LightningDungeonMiniBossvalue);


global.EarthDungeonFodder=ds_list_create()



ds_list_add(global.EarthDungeonFodder, 1);


 global.EarthDungeonValue = irandom(ds_list_size(global.EarthDungeonFodder) - 1);
 global.EarthDungeonValueUse = ds_list_find_value(global.EarthDungeonFodder, global.EarthDungeonValue);
 




global.perfect=0
global.miss=0
global.good=0
global.bad=0


global.gamesaveslot=0;
global.DamageAdd=0;
global.Lightningdmgprecent =1 ;
global.Firedmgprecent =1;
global.Icedmgprecent =1 ;
global.Earthdmgprecent =1 ;
global.criticalhit =+ 0.1 
global.Firedmgprecent=+0.15 
global.Healingpower =1 

global.Icedmgprecent =1
global.Firedmgprecent =1
 global.Icedmgprecent =1
global.Earthdmgprecent =1
global.poison=0;
global.fireball=0
global.icespike=0
global.Pressure=0;
global.iceeye=0;
global.playermana=100
global.playermanamax=100
global.roomchange=0;
global.keyused=0
global.playerexist=0
global.playerlevel=1
global.player =1;
global.ocase =0;
global.ocase1 =0;
global.SPlayerKey = 0 ; 
global.playercoin =0
global.PlayerKey  =0 
global.playerKeyMax = 1 
global.gamePaused= false; 
global.textSpeed =.75
global.iCamera = instance_create_layer(0,0,"Instances",O_Camera); 
global.playerhealth =10
global.Maxplayerhealth=10
global.healthincrease=1
global.targetRoom = -1
global.targetx =-1
global.targety =-1
global.targetDirection= 90;
global.anger = 0;
global.iLfited = noone ;   
global.menu=0;
global.playerexp=0;
global.playerskillpoints=0;
global.HolyGrail=0
global.Shard=0
global.Thorns=0
global.IronCrown=0
global.HolyLance=0
global.Reichskrone=0
global.DeadSeaScroll=0
global.FigureOfVenus=0
global.Kabbalah=0
global.Menorah=0
global.ScrollOfJohn=0
global.SwordOfAli=0
global.SwordOfDavid=0
global.PotOfAbe=0
global.RodOFArron=0
global.JosephsTurban=0
global.sandles=0
global.Dreidel=0
global.DavidsSling=0
global.Draupnir=0
global.Brisingamen=0
global.Eldhrimnir=0
global.Svalinn=0
global.Gungnir=0
global.Mjolnir=0
global.Megingjord=0
global.Hymers=0
global.inventory=array_create(Inventory_Slots,-1);
global.equip=array_create(Equip_Slots,-1);



window_set_fullscreen(true);


fullscreen = false;





room_goto(ROOM_Start);








