visible=false;

	visible=true
if (!instance_exists(PortalLight3)){
 instance_create_layer(x,y,"Lighting",PortalLight3)

}
;if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{
  global.targetRoom = targetRoom;

 global.targetx = targetx;
 global.targety = targety;

 
with (OGoblin) state = Playerstate_transition;
RoomTransition(Trans_type.SLIDE,  global.targetRoom )

}
