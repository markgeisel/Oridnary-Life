visible=false;
if !instance_exists(P_Enemy){
Portal =1  

if Portal =1 {
visible=true;
if (!instance_exists(PortalLight)){
with instance_create_layer(x+15,y+15,"Lighting",PortalLight)
Light_Color=$FF42FF58
}}
;if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,O_RoomExitLightning))
{

 global.targetRoom = targetRoom;	
 global.targetx = targetx;
 global.targety = targety;
 global.targetDirection = OGoblin.direction-180;
 
with(OGoblin) state= Playerstate_transition;
RoomTransition(Trans_type.SLIDE,targetRoom)

}
}