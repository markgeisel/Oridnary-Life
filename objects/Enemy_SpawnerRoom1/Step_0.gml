



if room == rmDungeon4{


if instance_exists(oDungeon3) {
if oDungeon3.count =2 &&oDungeon.roomList[| (ds_list_size(oDungeon3.roomList) -8)]&&oDungeon3.roomList[|8].c=3{

x=((oDungeon3.roomList[| 1].x1+oDungeon3.roomList[| 1].x2+1)/2)*32
y= ((oDungeon3.roomList[| 1].y1+oDungeon3.roomList[| 1].y2+1)/2)*32


}}
	value =  global.EarthDungeonValueUse

if spawn = 0 
{
if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)<= 130)
{

RangeTime++
	if RangeTime >= 15
	{

switch(global.EarthDungeonMiniBossValueUse)
{
case 1:
instance_create_layer(x,y,"Instances",E15)


break;


}



spawn = 1 
	}

if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)>= 130)
{
RangeTime = 0 
}



}}

if (instance_exists(P_Enemy))&&(!point_distance(x,y,P_Enemy.x,P_Enemy.y)<= 200)&&spawn==2
{ 	

ds_list_delete(global.EarthDungeonMiniBoss,   global.EarthDungeonMiniBossvalue );


 global.EarthDungeonMiniBossvalue = irandom(ds_list_size(global.EarthDungeonMiniBoss) - 1);
 
 global.EarthDungeonMiniBossValueUse = ds_list_find_value(global.EarthDungeonMiniBoss,global.EarthDungeonMiniBossvalue);
 




	
	
instance_destroy()

}

}






if room == rmDungeon3{


if instance_exists(oDungeon3) {
if oDungeon3.count =2 &&oDungeon.roomList[| (ds_list_size(oDungeon3.roomList) -8)]&&oDungeon3.roomList[|8].c=3{

x=((oDungeon3.roomList[| 1].x1+oDungeon3.roomList[| 1].x2+1)/2)*32
y= ((oDungeon3.roomList[| 1].y1+oDungeon3.roomList[| 1].y2+1)/2)*32


}}
	value =  global.LightningDungeonValueUse

if spawn = 0 
{
if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)<= 130)
{

RangeTime++
	if RangeTime >= 15
	{

switch(global.LightningDungeonMiniBossValueUse)
{
case 1:
instance_create_layer(x,y,"Instances",E13)
instance_create_layer(x-10,y,"Instances",E14)
instance_create_layer(x+10,y,"Instances",E14)

break;


}



spawn = 1 
	}

if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)>= 130)
{
RangeTime = 0 
}



}}

if (instance_exists(P_Enemy))&&(!point_distance(x,y,P_Enemy.x,P_Enemy.y)<= 200)&&spawn==2
{ 	

ds_list_delete(global.LightningDungeonMiniBoss,   global.FireDungeonMiniBossvalue );


 global.LightningDungeonMiniBossvalue = irandom(ds_list_size(global.LightningDungeonMiniBoss) - 1);
 
 global.LightningDungeonMiniBossValueUse = ds_list_find_value(global.LightningDungeonMiniBoss,global.FireDungeonMiniBossvalue);
 




	
	
instance_destroy()

}

}
if room == rmDungeon2{


if instance_exists(oDungeon) {
if oDungeon.count =2 &&oDungeon.roomList[| (ds_list_size(oDungeon.roomList) -8)]&&oDungeon.roomList[|8].c=3{

x=((oDungeon.roomList[| 1].x1+oDungeon.roomList[| 1].x2+1)/2)*32
y= ((oDungeon.roomList[| 1].y1+oDungeon.roomList[| 1].y2+1)/2)*32


}}
	value =  global.FireDungeonValueUse

if spawn = 0 
{
if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)<= 130)
{

RangeTime++
	if RangeTime >= 15
	{

switch(global.FireDungeonMiniBossValueUse)
{
case 1:
instance_create_layer(x,y,"Instances",E11)
instance_create_layer(x-10,y,"Instances",E12)
instance_create_layer(x+10,y,"Instances",E12)

break;


}



spawn = 1 
	}

if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)>= 130)
{
RangeTime = 0 
}



}}

if (instance_exists(P_Enemy))&&(!point_distance(x,y,P_Enemy.x,P_Enemy.y)<= 200)&&spawn==2
{ 	

ds_list_delete(global.FireDungeonMiniBoss,   global.FireDungeonMiniBossvalue );


 global.FireDungeonMiniBossvalue = irandom(ds_list_size(global.FireDungeonMiniBoss) - 1);
 
 global.FireDungeonMiniBossValueUse = ds_list_find_value(global.FireDungeonMiniBoss,global.FireDungeonMiniBossvalue);
 




	
	
instance_destroy()

}

}

if room == rmDungeon{

if instance_exists(oDungeon) {
if oDungeon.count =2 &&oDungeon.roomList[| (ds_list_size(oDungeon.roomList) -8)]&&oDungeon.roomList[|8].c=3{

x=((oDungeon.roomList[| 1].x1+oDungeon.roomList[| 1].x2+1)/2)*32
y= ((oDungeon.roomList[| 1].y1+oDungeon.roomList[| 1].y2+1)/2)*32


}}

		value =  global.IceDungeonValueUse
if spawn = 0 
{
if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)<= 130)
{
	RangeTime++ 
	if RangeTime >= 15
	{
	
switch(global.IceDungeonValueUse)
{
case 1:
instance_create_layer(x-8,y+8,"Instances",E1)

instance_create_layer(x-10,y,"Instances",E5)
instance_create_layer(x+10,y,"Instances",E5)
break;
case 2:
instance_create_layer(x+8,y+16,"Instances",E6)
instance_create_layer(x-16,y,"Instances",E6)
instance_create_layer(x,y+16,"Instances",E6)
instance_create_layer(x-8,y+8,"Instances",E6)
instance_create_layer(x+8,y+8,"Instances",E6)
instance_create_layer(x-16,y-8,"Instances",E6)
instance_create_layer(x,y-16,"Instances",E6)
instance_create_layer(x+-8,y,"Instances",E6)
break;
case 3:
instance_create_layer(x+10,y-16,"Instances",E4)
instance_create_layer(x-10,y-16,"Instances",E1)

break;
case 4:
instance_create_layer(x+10,y-16,"Instances",E4)
instance_create_layer(x-10,y-16,"Instances",E5)
instance_create_layer(x+10,y-16,"Instances",E5)
break;
case 5:
instance_create_layer(x-8,y+8,"Instances",E1)

instance_create_layer(x-10,y,"Instances",E6)
instance_create_layer(x+10,y,"Instances",E6)
instance_create_layer(x-10,y-10,"Instances",E6)
instance_create_layer(x+10,y-10,"Instances",E6)
break;
case 6:
instance_create_layer(x+10,y-16,"Instances",E4)
instance_create_layer(x-10,y-16,"Instances",E6)
instance_create_layer(x+10,y-16,"Instances",E6)
instance_create_layer(x-10,y-8,"Instances",E6)
instance_create_layer(x+10,y-8,"Instances",E6)
break;
case 7:
instance_create_layer(x-8,y+8,"Instances",E1)
instance_create_layer(x,y+8,"Instances",E1)

break
case 8:
instance_create_layer(x-8,y+8,"Instances",E5)
instance_create_layer(x,y+8,"Instances",E5)
instance_create_layer(x-10,y,"Instances",E5)
instance_create_layer(x+10,y,"Instances",E5)
break
case 9:
instance_create_layer(x+8,y-32,"Instances",E7)
instance_create_layer(x,y-32,"Instances",E7)
instance_create_layer(x,y+8,"Instances",E7)
instance_create_layer(x-8,y  ,"Instances",E7)
instance_create_layer(x+8,y+32,"Instances",E7)
instance_create_layer(x+8,y-8,"Instances",E7)
instance_create_layer(x-8,y+32,"Instances",E7)
instance_create_layer(x-8,y-8,"Instances",E7)
instance_create_layer(x-16,y+16,"Instances",E7)
instance_create_layer(x-16,y-16,"Instances",E7)
instance_create_layer(x+16,y+16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
break;
case 10:
instance_create_layer(x+10,y-16,"Instances",E4)
instance_create_layer(x-10,y-16,"Instances",E7)
instance_create_layer(x+10,y-16,"Instances",E7)
instance_create_layer(x-10,y-8,"Instances",E7)
instance_create_layer(x+10,y-8,"Instances",E7)
instance_create_layer(x,y,"Instances",E7)
instance_create_layer(x,y,"Instances",E7)
break
case 11: 

instance_create_layer(x,y+8,"Instances",E1)
instance_create_layer(x+-8,y-16,"Instances",E7)
instance_create_layer(x+-8,y-16,"Instances",E7)
instance_create_layer(x+-16,y-16,"Instances",E7)
instance_create_layer(x+-16,y-16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
break
case 12: 
instance_create_layer(x-10,y-16,"Instances",E6)
instance_create_layer(x+10,y-16,"Instances",E6)
instance_create_layer(x-10,y-8,"Instances",E6)
instance_create_layer(x+10,y-8,"Instances",E6)
instance_create_layer(x+-8,y-16,"Instances",E7)
instance_create_layer(x+-8,y-16,"Instances",E7)
instance_create_layer(x+-16,y-16,"Instances",E7)
instance_create_layer(x+-16,y-16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
break
case 13:
instance_create_layer(x+-8,y-16,"Instances",E7)
instance_create_layer(x+-8,y-16,"Instances",E7)
instance_create_layer(x+-16,y-16,"Instances",E7)
instance_create_layer(x+-16,y-16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
instance_create_layer(x+16,y-16,"Instances",E7)
instance_create_layer(x-10,y,"Instances",E5)
instance_create_layer(x+10,y,"Instances",E5)
break 
}




spawn = 1 
	}

if(instance_exists(target))&&(point_distance(x,y,target.x,target.y)>= 130)
{
RangeTime = 0 
}



}}

if (instance_exists(P_Enemy))&&(!point_distance(x,y,P_Enemy.x,P_Enemy.y)<= 200)&&spawn==2
{ 	

ds_list_delete(global.IceDungeonFodder,  global.IceDungeonValue);


 global.IceDungeonValue = irandom(ds_list_size(global.IceDungeonFodder) - 1);
 
 global.IceDungeonValueUse = ds_list_find_value(global.IceDungeonFodder, global.IceDungeonValue);
 




	
instance_destroy()

}}