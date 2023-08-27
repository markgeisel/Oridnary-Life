/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(
 
Sinventorybox495,
0,
x-25,
y-12,
12+rowLength*42,
12+(((Inventory_Slots-1)div rowLength)+1)*41


);

for (var i=0; i<Inventory_Slots; i+=1)
{
  var xx =x+(i mod rowLength)*39-5;
  var yy =y+(i div rowLength)*38+7;
  var hover = (O_Mouse.inventoryHover==id) && (O_Mouse.slotHover == i)
  draw_sprite(Sinventorybox495,hover,xx,yy)

	if ( inventory[i] != -1)
	{
		
		var alpha = 1.0;
		if (O_Mouse.inventoryDrag == id) && (O_Mouse.SlotDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
			draw_sprite(SChristainrelics496,inventory[i],xx,yy);
		

		draw_set_alpha(1.0)
		if (O_Mouse.inventoryDrag == id){
		



		}
 }
}

if (O_Mouse.slotHover != -1)
{
	
		
}