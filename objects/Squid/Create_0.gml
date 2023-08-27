/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
aggro = 0; 
state = EnemySTATE.WANDER;
_Lighting=0;
sprMoveR = SquidWalkRight;
sprMoveL= SquidWalkLeft;
sprMoveD = SquidWalkDown;
sprMoveU = SquidUpWalk;
sprattackR=SquidAttackRight
sprattackL=SquidAttackLeft
sprattackD=SquidAttackDown
sprattackU=SquidAttackUp



sprAttack = SquidAttackDown;
sprDie = Ice_Crown_Die;
sprHurt = Ice_Crown_Hurt;


invulnerable = 0; 
enemyScript[EnemySTATE.SPAWN]= GoblinSpawn;
enemyScript[EnemySTATE.WANDER]= GoblinWander145;
enemyScript[EnemySTATE.CHASE]= GoblinChaserange2;
enemyScript[EnemySTATE.ATTACK]= GoblinAttackSquid1;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDie;
invulnerable = max(invulnerable-1,0)
can_collide = true