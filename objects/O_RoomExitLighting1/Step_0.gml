event_inherited()

visible=false;
if !instance_exists(P_Enemy){
Portal =1 

if Portal =1 {
visible=true;
if (!instance_exists(PortalLight1)){
with instance_create_layer(x,y,"Lighting",PortalLight1)
Light_Color=$FF42FF58
}
}
if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{ 
 

 global.targetx = targetx;
 global.targety = targety;
 global.targetDirection = OGoblin.direction-180;
  
OGoblin.x=0;
OGoblin.y=0;
OGoblin.x=targetx;
OGoblin.y=targety;
RoomTransition(Trans_type.SLIDE,global.targetRoom)


}
}