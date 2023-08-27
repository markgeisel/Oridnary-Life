


if move=1&&Clicked=1{
x=X+2
y=Y+2
}
else{
x=X
y=Y

}


if Clicked=1{


Count ++ 
}

if Count > 15 {
Finish=1
if Room != 0{
room_goto(Room)
}
}
