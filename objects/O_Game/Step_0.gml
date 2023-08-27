

 
if  is_string(global.IceDungeonValueUse)  {

 global.IceDungeonValue = irandom(ds_list_size(global.IceDungeonFodder) - 1);
 
 global.IceDungeonValueUse = ds_list_find_value(global.IceDungeonFodder,  global.IceDungeonValue);
 
Killcounter ++ 


if Killcounter > 30
{
ds_list_add(global.IceDungeonFodder, 1);
ds_list_add(global.IceDungeonFodder, 2);
ds_list_add(global.IceDungeonFodder, 3);
ds_list_add(global.IceDungeonFodder, 4);
ds_list_add(global.IceDungeonFodder, 5);
ds_list_add(global.IceDungeonFodder, 6);
ds_list_add(global.IceDungeonFodder, 7);
ds_list_add(global.IceDungeonFodder, 8);
ds_list_add(global.IceDungeonFodder, 9);
ds_list_add(global.IceDungeonFodder, 10);
ds_list_add(global.IceDungeonFodder, 11);
ds_list_add(global.IceDungeonFodder, 12);
ds_list_add(global.IceDungeonFodder, 13);


}
}else{
Killcounter=0 

}





if  global.IceDungeonValueUse ==0  {

 global.IceDungeonValue = irandom(ds_list_size(global.IceDungeonFodder) - 1);
 
 global.IceDungeonValueUse = ds_list_find_value(global.IceDungeonFodder,  global.IceDungeonValue);

}


 value =  global.IceDungeonValue

  if global.playerlevel==1 && global.playerexp>50&&global.playerlevel != 2 
 {global.playerlevel = 2 global.playerskillpoints++}
 
 if global.playerlevel==2 && global.playerexp>120&&global.playerlevel != 3 {
 global.playerlevel = 3 global.playerskillpoints++
 }
  if global.playerlevel==3 && global.playerexp>230&&global.playerlevel != 4{
 global.playerlevel = 4 global.playerskillpoints++
 }
 
  if global.playerlevel==4 && global.playerexp>350&&global.playerlevel != 5{
 global.playerlevel = 5 global.playerskillpoints++
 }
 
   if global.playerlevel==5 && global.playerexp>470&&global.playerlevel != 6{
 global.playerlevel = 6 global.playerskillpoints++
 }
 
   if global.playerlevel==6 && global.playerexp>620&&global.playerlevel != 7{
 global.playerlevel = 7 global.playerskillpoints++
 }
   if global.playerlevel==7 && global.playerexp>820&&global.playerlevel != 8{
 global.playerlevel = 8 global.playerskillpoints++
 }
  if global.playerlevel==8 && global.playerexp>1070&&global.playerlevel != 9{
 global.playerlevel = 9 global.playerskillpoints++
 }
 




draw_sprite (Coin,1,8,48);
draw_text(23,49,global.playercoin);

if global.playerlevel=1{
draw_text(25,65,("/"));
draw_text(33,65,("50"));
}
if global.playerlevel=2{
draw_text(30,65,("/"));
draw_text(40,65,("120"));

}
if global.playerlevel=3{
draw_text(30,65,("/"));
draw_text(40,65,("230"));

}
if global.playerlevel=3{
draw_text(30,65,("/"));
draw_text(40,65,("350"));

}
if global.playerlevel=4{
draw_text(30,65,("/"));
draw_text(40,65,("470"));

}
if global.playerlevel=5{
draw_text(30,65,("/"));
draw_text(40,65,("620"));

}

