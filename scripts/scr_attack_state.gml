//attack
image_speed = 0.5;

switch(sprite_index){
    case spr_player_up:
        sprite_index = spr_player_attack_up;
        break;
        
    case spr_player_right:
        sprite_index = spr_player_attack_right;
        break;
        
    case spr_player_down:
        sprite_index = spr_player_attack_down;
        break;
        
    case spr_player_left:
        sprite_index = spr_player_attack_left;
        break;

}

if(image_index >= 3 and attacked == false){
    var xx = x;
    var yy = y;
    
    switch(sprite_index){
        case spr_player_attack_up:
            yy -= 14;
            break;
            
        case spr_player_attack_right:
            xx += 12;
            yy += 2;
            break;
            
        case spr_player_attack_down:
            yy += 14;
            break;
            
        case spr_player_attack_left:
            xx -= 12;
            yy += 2;
            break;
    
    }

    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    damage.damage = obj_player_stats.atkpow;//attack power
    attacked = true;
}
