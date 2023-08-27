
draw_sprite(Shadow,0,floor(x),floor(y));

draw_sprite(Crosshair,1,crosshairX,crosshairY);



if instance_exists(oDungeon){
value = global.IceDungeonValue	
	

}
if (invulnerable !=0)&&((invulnerable mod 8<2)==0)&&(flash==0)


{

}
else{
	
	if form == 0{
	
	
	
	if  direction <= 45{ 
		
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(VeparRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(VeparRightAttack,-1,x-14,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(VeparRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	
	
	
	
	
	
	}
	
	
		
	if direction >=  135 && direction <= 225 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(VeparLeft,frame,x+6,y-10,1,1,0,c_white,1)
		draw_sprite_ext(VeparLeftAttack,-1,x+6,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(VeparLeft,frame,x+6,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
		
	if direction > 225 && direction <= 310 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(VeparDown,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(VeparDownAttack,-1,x-5,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(VeparDown,frame,x-5,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
	
		if direction >= 315  {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(VeparRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(VeparRightAttack,-1,x-14,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(VeparRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
	
	}
	
	
	if form == 1 {
	
	
	if  direction <= 45{ 
		
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(AmonRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonRightAttack,-1,x-14,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AmonRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	
	}
	
	
	
	if direction >=  135 && direction <= 225 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(AmonLeft,frame,x+6,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonLeftAttack,-1,x+6,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AmonLeft,frame,x+6,y-10,1,1,0,c_white,1)
		}
	
	}
			
	if direction > 225 && direction <= 310 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(AmonDown,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonDownAttack,-1,x-5,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AmonDown,frame,x-5,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
		if direction >= 315  {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(AmonRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonRightAttack,-1,x-14,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AmonRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
	
	}
	
	
	
	if form == 2 {
	
	
	if  direction <= 45{ 
		
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(AgaresRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonRightAttack,-1,x-14,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AgaresRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	
	}
	
	
	
	if direction >=  135 && direction <= 225 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(AgaresLeft,frame,x+6,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonLeftAttack,-1,x+6,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AgaresLeft,frame,x+6,y-10,1,1,0,c_white,1)
		}
	
	}
			
	if direction > 225 && direction <= 310 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(AgaresDown,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonDownAttack,-1,x-5,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AgaresDown,frame,x-5,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
		if direction >= 315  {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(AgaresRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonRightAttack,-1,x-14,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AgaresRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
	
	}
	
	
	
	if form = 3 {
	
	
	if  direction <= 45{ 
		
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(FurfurRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonRightAttack,-1,x-14,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(FurfurRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	
	
	}
	
	if direction >=  135 && direction <= 225 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition && state !=  Playerstate_dodge
		
		{
		
	draw_sprite_ext(FurfurLeft,frame,x+6,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonLeftAttack,-1,x+6,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(FurfurLeft,frame,x+6,y-10,1,1,0,c_white,1)
		}
	
	}
	
	
	
	if direction > 225 && direction <= 310 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(FurfurDown,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonDownAttack,-1,x-5,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(FurfurDown,frame,x-5,y-10,1,1,0,c_white,0.8)
		}
	
	}
	
	
			if direction >= 315  {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition&& state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(FurfurRight,frame,x-14,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonRightAttack,-1,x-14,y  -10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(FurfurRight,frame,x-14,y-10,1,1,0,c_white,0.8)
		}
	
	}

	
	
	}
	

	
	
	
draw_sprite_ext( 
sprite_index, 
image_index,
x,
y,
image_xscale,
image_yscale,
image_angle,
image_blend,
image_alpha
)}




if direction >  45 && direction < 135 && form== 2 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition  && state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(AgaresUp,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonUpAttack,-1,x-5,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AgaresUp,frame,x-5,y-10,1,1,0,c_white,0.8)
		}}



if direction >  45 && direction < 135 && form== 3 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition  && state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(FurfurUp,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonUpAttack,-1,x-5,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(FurfurUp,frame,x-5,y-10,1,1,0,c_white,0.8)
		}}




if direction >  45 && direction < 135 && form== 1 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition  && state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(AmonUp,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(AmonUpAttack,-1,x-5,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(AmonUp,frame,x-5,y-10,1,1,0,c_white,0.8)
		}}





	if direction >  45 && direction < 135 && form== 0 {
		if state != Playerstate_free && state != Playerstate_locked && state != Playerstate_transition  && state != Playerstate_dodge
		
		{
		
	draw_sprite_ext(VeparUp,frame,x-5,y-10,1,1,0,c_white,1)
		draw_sprite_ext(VeparUpAttack,-1,x-5,y-10,1,1,0,c_white,01)
		}else{
		
		
			draw_sprite_ext(VeparUp,frame,x-5,y-10,1,1,0,c_white,0.8)
		}}



