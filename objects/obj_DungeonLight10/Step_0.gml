if instance_exists(oDungeon) { if oDungeon.count =2 &&oDungeon.roomList[| (ds_list_size(oDungeon.roomList) -10)]{

 


light[| eLight.X]=((oDungeon.roomList[| 9].x1+oDungeon.roomList[| 9].x2+1)/2)*32
light[| eLight.Y]= ((oDungeon.roomList[| 9].y1+oDungeon.roomList[| 9].y2+1)/2)*32

}}