/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
aggro = 0; 
state = EnemySTATE.CHASE;



_Lighting=0;

sprAttack = dreiliftbigAttack;
sprDie = dreiliftbigseparate;
sprHurt = dreiliftbigwalk;
sprMoveR = dreiliftbigwalkRight1;
sprMoveL= dreiliftbigwalkLeft;
sprMoveD = dreiliftbigwalkDown;
sprMoveU = dreiliftbigwalkUp;


sprMoveRA = DruagarRightAttack;
sprMoveLA= DruagarLeftAttack;
sprMoveDA =  DruagarDownAttack;
sprMoveUA =  DruagarUpAttack;





invulnerable = 0; 

enemyScript[EnemySTATE.CHASE]= GoblinChaseDiv;
enemyScript[EnemySTATE.ATTACK]= GoblinAttackDiv;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDiesplit;
invulnerable = max(invulnerable-1,0)
can_collide = true
target=Player