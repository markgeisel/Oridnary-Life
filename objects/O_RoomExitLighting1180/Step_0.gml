event_inherited()

visible=false;
if !instance_exists(P_Enemy){
Portal =1 

if Portal =1 {
visible=true;
if (!instance_exists(PortalLight1)){
 instance_create_layer(x,y,"Lighting",PortalLight1)

}
}
if (instance_exists(OGoblin)) && (position_meeting(OGoblin.x,OGoblin.y,id))
{ 
 

 global.targetx = targetx;
 global.targety = targety;
 global.targetDirection = OGoblin.direction-180;
  

RoomTransition(Trans_type.SLIDE,targetRoom)


}
}