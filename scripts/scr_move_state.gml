scr_get_input();

if(dash_key and obj_player_stats.stamina>=3){
        obj_player_stats.stamina-=3;
        state = scr_dash_state;
        alarm[0] = room_speed / 6;
        obj_player_stats.alarm[0]=room_speed*4;
}

if(attack_key and obj_player_stats.stamina>=1){
    obj_player_stats.stamina--;
    image_index = 0;//in case player running animation starts at 0
    state = scr_attack_state;
    obj_player_stats.alarm[0]=room_speed*4;
}
// get direction and length
dir = point_direction(0, 0, x_axis, y_axis);
if(x_axis == 0 and y_axis == 0){
    len = 0;
}else{
    len = spd;
    scr_get_face();
}
// set speed
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// animate
image_speed = 0.2;
if(len == 0) image_index = 0;


switch(face){
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
}
/*if(vspd > 0) sprite_index = spr_player_down;
else if(vspd < 0)sprite_index = spr_player_up;

if(hspd > 0) sprite_index = spr_player_right;
else if(hspd < 0) sprite_index = spr_player_left;*/

