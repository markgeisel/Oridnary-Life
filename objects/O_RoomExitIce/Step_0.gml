visible=false;
if !instance_exists(P_Enemy){
	visible=true
;if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{
targetRoom=IceCave;
 global.targetx = targetx;
 global.targety = targety;
 global.targetDirection = OGoblin.direction =0;
 
with (OGoblin) state = Playerstate_transition;
RoomTransition(Trans_type.SLIDE,targetRoom)


OGoblin.x=targetx;
OGoblin.y=targety;
OGoblin.direction=45;
}}