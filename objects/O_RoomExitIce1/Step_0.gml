visible=false;
if !instance_exists(P_Enemy){
	visible=true
	if (!instance_exists(PortalLight3)){
 instance_create_layer(x,y,"Lighting",PortalLight3)

}
;if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{
 OGoblin.x=1400
 OGoblin.y=400

 global.targetx = targetx;
 global.targety = targety;

  

RoomTransition(Trans_type.SLIDE,global.targetRoom)

}
}