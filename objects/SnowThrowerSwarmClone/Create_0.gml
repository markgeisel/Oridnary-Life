/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

aggro = 0; 
state = EnemySTATE.CHASE;
_Lighting=0;
sprMove = snowthrowerattack1;
sprAttack = snowthrower1;
sprDie = Ice_Crown_Die;
sprHurt = Ice_Crown_Hurt;
invulnerable = 0; 
enemyScript[EnemySTATE.WANDER]= GoblinWander;
enemyScript[EnemySTATE.CHASE]= GoblinChase231;
enemyScript[EnemySTATE.ATTACK]= GoblinAttackrange1;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDie;
enemyScript[EnemySTATE.SPAWN]=GoblinSpawn;
invulnerable = max(invulnerable-1,0)
can_collide = true
float =1;
grav=0.1
move_speed = 1.2;   // Speed of the enemy's movement
swarm_distance = 60;   // Distance from the player at which the enemy starts to swarm
 swarm_speed = 2;   // Speed at which the enemy swarms around the player
 swarm_radius = 90;   // Radius of the swarm circle
 attack_range = 62

 ;   // Range of the enemy's attack
 attack_speed = 50;