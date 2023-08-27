function GoblinChase231() {

{if image_index != sprMove{
sprite_index=sprMove
}
// Update the enemy's position
var target = instance_nearest(x, y, OGoblin);   // Find the nearest player
var distance_to_target = distance_to_object(target);
if (distance_to_target > swarm_distance) {
    // Move towards the player if they are outside the swarm distance
     dir = point_direction(x, y, target.x, target.y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
} else {
    // Swarm around the player if they are inside the swarm distance
    var angle = point_direction(target.x, target.y, x, y) - 90;
    x = target.x + lengthdir_x(swarm_radius, angle);
    y = target.y + lengthdir_y(swarm_radius, angle);
    angle += swarm_speed;
    x += lengthdir_x(swarm_radius, angle);
    y += lengthdir_y(swarm_radius, angle);
}
if (distance_to_target < attack_range) {
    // Attack the player if they are within attack range
 state=EnemySTATE.ATTACK

	sprite_index=sprAttack;

}}}