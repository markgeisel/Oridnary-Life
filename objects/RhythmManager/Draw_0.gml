/// @description Insert description here
// You can write your code in this editor

if global.perfect>0{
draw_sprite(PerfectSprite,-1,x,y)
}


if global.miss>0{
draw_sprite(MissSprite,-1,x,y)
}

if global.bad>0{
draw_sprite(BadSprite,-1,x,y)
}

if global.good>0{
draw_sprite(GoodSprite,-1,x,y)
}


if End = 1 {
draw_sprite(RhythmEndSprite,-1,0,0)

}