/// @description Insert description here
// You can write your code in this editor


event_inherited();
Cullcounter=0
aggro = 0; 

_Lighting=0;

sprMove = BabyTrollWalk;
sprAttack = BabyTrollAttack;
sprDie = BabyTrollWalk;
sprHurt = BabyTrollWalk;



target=Player

if Skin < 1 {


sprMove = BabyTrollWalk;
sprAttack = BabyTrollAttack;
sprDie = BabyTrollWalk;
sprHurt = BabyTrollWalk;
} 


if Skin >= 1 && Skin <= 2  {



sprMove = BabyTroll1Walk;
sprAttack = BabyTroll1Attack;
sprDie = BabyTroll1Walk;
sprHurt = BabyTroll1Walk;
} 


if Skin >= 2 {


sprMove = BabyTroll2Walk;
sprAttack = BabyTroll2Attack;
sprDie = BabyTroll2Walk;
sprHurt = BabyTroll2Walk;
} 



state = EnemySTATE.WANDER;	



invulnerable = 0; 
enemyScript[EnemySTATE.WANDER]= GoblinWander;
enemyScript[EnemySTATE.CHASE]= GoblinChase;
enemyScript[EnemySTATE.ATTACK]= GoblinAttack;
enemyScript[EnemySTATE.HURT] = GoblinHurt;
enemyScript[EnemySTATE.DIE] =GoblinDie;
invulnerable = max(invulnerable-1,0)
can_collide = true
enemyHP=0.5;
EnemyhpOrginal=enemyHP