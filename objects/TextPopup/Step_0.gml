/// @description Insert description here
// You can write your code in this editor
if trigger = 0 


if counter1 == 0 {

z-=drop
drop -= 2.25
}
counter1++
if counter1 > 1  {
counter1 = 0



}

if -15 >= z {
	
trigger = 1 

}

if trigger == 1 {

z = -5

count ++ 

if count > 100 {

trigger = 2 
}
}



if trigger = 2 {

if counter == 0 {

z+=1

}
counter++
if counter > 2{
counter = 0

}
image_alpha -= 0.005;


}