/// @description Insert description here
// You can write your code in this editor

if instance_exists(GUI_Menu){
if GUI_Menu.changepage !=1 &&global.page =4{



for (var i=0; i<3; i+=1)
{
  var xx =x+(i mod rowLength)*39-5;
  var yy =y+(i div rowLength)*38+7;
  var hover = (O_Mouse.inventoryHover==id) && (O_Mouse.slotHover == i)
  draw_sprite(Sinventorybox495,hover,xx,yy)

	if ( Oinventory268.inventory[i] != -1)
	{
I=Oinventory268.inventory[i]
		var alpha = 1.0;
		if (O_Mouse.inventoryDrag == id) && (O_Mouse.SlotDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
			draw_sprite(SChristainrelics496,Oinventory268.inventory[i],xx,yy);
		draw_text(xx,yy,I);

		draw_set_alpha(1.0)
		if (O_Mouse.inventoryDrag == id){
		



		}
 }
}

if (O_Mouse.slotHover != -1)
{
	
		
}}}