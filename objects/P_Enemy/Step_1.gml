if place_meeting(x, y, P_Enemy) {
var collisionMap = layer_tilemap_get_id(layer_get_id("cull"));
var tileSize = 1; // the size of each tile in pixels
var checkSize = 5; // the number of tiles to check in each direction
var push = 0.5; // the push distance

collisionMap = layer_tilemap_get_id(layer_get_id("cull"));

if (entityCull) {
    var xPrev = x;
    var yPrev = y;
    var collided = false;

    // Check for collisions with walls
    for (var i = -checkSize; i <= checkSize; i++) {
        for (var j = -checkSize; j <= checkSize; j++) {
            var tile = tilemap_get_at_pixel(collisionMap, x + j, y + i);
            if (tile != 0) {
                collided = true;
                break;
            }
        }
        if (collided) break;
    }

    // Check for collisions with other enemies
    if (!collided) {
        var separationRadius = 16; // Adjust this value to control the separation distance
        var avoidVectorX = 0;
        var avoidVectorY = 0;

        // Iterate through all other enemies
        with (P_Enemy) {
            if (id != other.id) {
                var distance = point_distance(x, y, other.x, other.y);
                if (distance < separationRadius) {
                    // Calculate the avoidance vector
                    var angle = point_direction(x, y, other.x, other.y);
                    avoidVectorX += lengthdir_x(separationRadius - distance, angle);
                    avoidVectorY += lengthdir_y(separationRadius - distance, angle);
                }
            }
        }

        // Apply the avoidance vector to the enemy's position
        var avoidSpeed = 0.1; // Adjust this value to control the avoidance speed
        x += avoidVectorX * avoidSpeed;
        y += avoidVectorY * avoidSpeed;
    } else {
        // If there was a collision with a wall, don't move the enemy
        x = xPrev;
        y = yPrev;
    }
}
}