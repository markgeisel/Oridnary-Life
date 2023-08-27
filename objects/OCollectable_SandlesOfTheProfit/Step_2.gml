flash=max(0,flash-0.05)
fric=0.0125
if (z==0) fric = 0.025

if counter == 0 {
with instance_create_depth(x,y,-900,ItemLight)
{target=other.id}
counter=1


}



if instance_exists(Player)
{
var _px = Player.x
var _py	 = Player.y
var _dist = point_distance(x,y,_px,_py)
if (_dist<25)
  {
  spd += 0.25
  dir=point_direction(x,y,_px,_py)
  spd=min(spd,3)
  }
    if (_dist<5)
    {
     if (collectScriptArg != -1)
     {script_execute(collectScript,collectScriptArg)
	}
	
	else { if collectScript !=-1 script_execute(collectScript)
	 
	}
	instance_destroy()
	




}
}

x+=lengthdir_x(spd,dir)
y+=lengthdir_y(spd,dir
)
spd=max(spd-fric,0);
depth=-bbox_bottom

fire=max(fire-0.005,0);
fflash = max(fflash-0.005,0);
iflash = max(iflash-0.005,0);
Ice = max(Ice-0.005,0);
Lighting=max(Lighting-0.005,0);
lflash=max(lflash-0.005,0);
eflash=max(eflash-0.005,0);
Earth = max(Earth-0.005,0);
flash=max(flash-0.005,0);