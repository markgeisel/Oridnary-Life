y++

 if   y > goal-50 && y < goal+50&&keyboard_check_pressed(vk_right) {


 if   y > goal-25 && y < goal+25&&keyboard_check_pressed(vk_right) {


 if  y > goal-10 && y < goal+10&&keyboard_check_pressed(vk_right) {

if y > goal-5 && y < goal+5&&keyboard_check_pressed(vk_right) {
global.perfect=1
instance_destroy()

}else{

global.good=1
instance_destroy()
}

}else{
global.bad=1
instance_destroy()
}
}

else{
global.miss=1
instance_destroy()
}
}

if y> 300{
instance_destroy()

}


