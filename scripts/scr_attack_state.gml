//attack
image_speed = 0.5;

movement = ATTACK;

if(image_index >= 3 and attacked == false){
    var xx = x;
    var yy = y;
    
    switch(face){
        case UP:
            yy -= 14;
            break;
            
        case RIGHT:
            xx += 12;
            yy += 2;
            break;
            
        case DOWN:
            yy += 14;
            break;
            
        case LEFT:
            xx -= 12;
            yy += 2;
            break;
    
    }

    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.atkpow;//attack power
    attacked = true;
}
