/// @description Insert description here
// You can write your code in this editor
if global.perfect>0{
global.perfect=global.perfect-0.05

}

if global.good>0{
global.good=global.good-0.05

}


if global.miss>0{
global.miss=global.miss-0.05

}



if global.bad>0{
global.bad = global.bad-0.05

}

if !instance_exists(Arrow){


counter++ 
if counter>30
{
End=1
}



}

if End=1 
{
count++

}
if count>180{
room_goto(GameMenu)

}