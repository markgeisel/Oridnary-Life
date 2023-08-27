//depth=-bbox_bottom	

event_inherited();



dust = 0 
direction=90;
frame=0
IceSpikedelay=0
 delay = 3* room_speed
state = Playerstate_free;
stateattk = 0;
stateattk2 = 0;
HitByattk = -1;
lastState = state;
collisionMap = layer_tilemap_get_id(layer_get_id("cull"));
image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.2
digspeed=0.85;
charge=0;
chargemax= room_speed * 3
max_speed=10; 
speeddodge = 2;

play=0;

distance = 35;
distanceBonk = 5;
distanceBonkHeight = 0;
speedBonk = 2;
z = 0;
manamax=global.playermanamax
Mana=global.playermana
animationEndScript = -1;
invulnerable = 0; 
flash  = 0;
flashShader =sBurn;
form=0;
manabar_width=250
manabar_height=5
manabar_x = (384/2) - (manabar_width/2);
manabar_y= 185;
poison=0;

global.snowtrail=0;
global.form=form;
crosshairX = x+20;
crosshairY = y-20;

sprite_attk = Mage_attk2;
spriteDodge = Mage_Dodge;
spriteRun = Mage_Run;
spriteIdle  = Mage_idle;
localFrame = 0;
yVelSub=0
xVelSub=0

 


flags=eShadowCasterFlags.Dirty