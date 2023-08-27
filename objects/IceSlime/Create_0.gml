/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
aggro = 0; 
state = EnemySTATE.SPAWN;
_Lighting=0;
sprMove = IceSlimeMove;
sprAttack = IceSlimeAttack;
sprDie = IceSlimeMove;
sprHurt = IceSlimeMove;
invulnerable = 0; 
enemyScript[EnemySTATE.SPAWN]=GoblinSpawn;
enemyScript[EnemySTATE.WANDER]= GoblinWander;
enemyScript[EnemySTATE.CHASE]= GoblinChase;
enemyScript[EnemySTATE.ATTACK]= GoblinAttack;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDie;
invulnerable = max(invulnerable-1,0)
can_collide = true
target=Player