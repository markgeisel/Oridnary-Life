
if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{
 global.targetRoom = targetRoom;
 
 global.targetx = targetx;
 global.targety = targety;
 global.targetDirection = OGoblin.direction-180;
  
OGoblin.x=0;
OGoblin.y=0;
OGoblin.x=targetx;
OGoblin.y=targety;
RoomTransition(Trans_type.SLIDE,targetRoom)


}



