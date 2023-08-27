/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
aggro = 0; 
state = EnemySTATE.WANDER;
_Lighting=0;
sprMoveR = dreiliftwalkright;
sprMoveL= dreiliftwalkleft;
sprMoveD =  dreiliftwalkdown;
sprMoveU =  dreiliftwalkup;
sprMoveRA = dreiliftbigAttack;
sprMoveLA= dreiliftbigAttackleft;
sprMoveDA =  dreiliftAttackdown;
sprMoveUA =  dreiliftbigattackup;


small=0


sprDie = dreiliftbigseparate;
sprHurt = Dreilifthurt;


invulnerable = 0; 
enemyScript[EnemySTATE.WANDER]= GoblinWander145;
enemyScript[EnemySTATE.CHASE]= GoblinChaseDiv;
enemyScript[EnemySTATE.ATTACK]= GoblinAttackDiv;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDiesplit;

invulnerable = max(invulnerable-1,0)
can_collide = true