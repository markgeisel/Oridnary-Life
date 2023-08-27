/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

aggro = 0; 
state = EnemySTATE.SPAWN;
_Lighting=0;
sprMove = snowthrowerattack1;
sprAttack = snowthrower1;
sprDie = Ice_Crown_Die;
sprHurt = Ice_Crown_Hurt;
invulnerable = 0; 
enemyScript[EnemySTATE.WANDER]= GoblinWander;
enemyScript[EnemySTATE.CHASE]= GoblinChaserange;
enemyScript[EnemySTATE.ATTACK]= GoblinAttackrange1;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDie;
enemyScript[EnemySTATE.SPAWN]=GoblinSpawn;
invulnerable = max(invulnerable-1,0)
can_collide = true
float =1;
grav=0.1
