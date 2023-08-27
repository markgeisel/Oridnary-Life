if mouse_check_button_released(mb_left){
Screenshake(45,45)

}



if breakfast=0&&N <= 21 {
if mouse_check_button_released(mb_left){
N++

Screenshaker.shake_magnitude=5



if N >= 21
{
breakfastend=1



}

}
}
if breakfastend=1{
count++ 
if count == 180{
breakfastend=2
breakfast=1
Cake=1

N=0

count=0
}
}




if Cake=1&&N <= 27{if mouse_check_button_released(mb_left){
N++
Screenshaker.shake_magnitude=5

}

	
}

if Cake=1&& N>=27{
count++ 

}	


if Cake=1&& count == 180{

room_goto(GameMenu)
Cake=2

N=0


}
	
	
	


