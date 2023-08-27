if mouse_check_button_pressed(mb_right)&&trigger=0{

click=1
trigger=1}


if(slotHover != -1)&&(inventoryHover.inventory[slotHover] != -1)&&click=1{

ItemRead=inventoryHover.inventory[slotHover]
click=0
trigger=0 
}
