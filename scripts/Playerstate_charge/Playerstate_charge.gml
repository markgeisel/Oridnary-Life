function Playerstate_charge() {
	
	
charge ++ 







if form ==0 {


if mouse_check_button_released(mb_left) {
if (charge >= 60)&&global.icespike>=5{	state = Ice_breathspike4;}else
if (charge >= 48)&&global.icespike>=4{	state = Ice_breathspike3;}else
if (charge >= 36)&&global.icespike>=3{	state = Ice_breathspike2;}else
if (charge >= 24)&&global.icespike>=2{	state = Ice_breathspike1;}
else if(charge >= 12)&&global.icespike>=1{	state = Ice_breathspike;}
else {	state = Ice_breath;
}
}


if (charge >= 12)&&global.icespike==1{


 	state = Ice_breathspike;
}

if (charge >= 24)&&global.icespike==2{


 	state = Ice_breathspike1;
}

if (charge >= 36)&&global.icespike==3{


 	state = Ice_breathspike2;
}
if (charge >= 48)&&global.icespike==4{


 	state = Ice_breathspike3;
}

if (charge >= 60)&&global.icespike==5{


 	state = Ice_breathspike4;
}



if global.icespike==0{
state = Ice_breath
}
}



if form ==1 {


if mouse_check_button_released(mb_left) {
if (charge >= 60)&&global.fireball>=5{	state = Fire_bullet4;}else
if (charge >= 48)&&global.fireball>=4{	state = Fire_bullet3;}else
if (charge >= 36)&&global.fireball>=3{	state = Fire_bullet2;}else
if (charge >= 24)&&global.fireball>=2{	state = Fire_bullet1;}
else if(charge >= 12)&&global.fireball>=1{	state = Fire_bullet;}
else {	state = Fire_bullet;
}
}


if (charge >= 12)&&global.fireball==1{


 	state = Fire_bullet;
}

if (charge >= 24)&&global.fireball==2{


 	state = Fire_bullet1;
}

if (charge >= 36)&&global.fireball==3{


 	state = Fire_bullet2;
}
if (charge >= 48)&&global.fireball==4{


 	state = Fire_bullet3;
}

if (charge >= 60)&&global.fireball==5{


 	state = Fire_bullet4;
}



if global.fireball==0{
state = Fire_bullet;
}
}
















}