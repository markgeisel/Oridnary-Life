 z=  0;
flash=0;
state= e_state.idle;
lifted = 0;
g=random_range(450000,550000)
entity_targetX  =	0;	
entity_targetY  =	0;
fflash =0;
iflash =0; 
lflash=0;
eflash=0;
Uflash=0;
anger= false;

 
 thrown = false ;
 float = 0 ;
LFlash = shader_get_uniform(sLighting,"lflash");
IFlash = shader_get_uniform(sFreeze,"iflash");
FFlash = shader_get_uniform(sBurn,"fflash");
EFlash = shader_get_uniform(sEarth,"eflash");
Uflash=shader_get_uniform(sFlash,"uflash")
EntityDropList = -1 



Ice = 0; 
Lighting = 0;
fire = 0;
Earth = 0; 