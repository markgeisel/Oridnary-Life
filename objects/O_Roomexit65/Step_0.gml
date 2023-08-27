
if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{
 global.targetRoom = targetRoom;
OGoblin.x=1700;
OGoblin.y=220;
RoomTransition(Trans_type.SLIDE,targetRoom)


}


