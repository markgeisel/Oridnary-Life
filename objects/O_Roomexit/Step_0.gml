
if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{
 global.targetRoom = targetRoom;
 


 global.targetx = targetx;
 global.targety = targety;
 global.targetDirection = OGoblin.direction-180;
with(OGoblin) state= Playerstate_transition;
RoomTransition(Trans_type.FADE,targetRoom)
}

OGoblin.speedWalk=1;
global.roomchange=0;