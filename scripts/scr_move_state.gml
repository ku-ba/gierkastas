scr_get_input();

if(dash_key){
    state = scr_dash_state;
    alarm[0] = room_speed / 8;
 }
// get direction and length
dir = point_direction(0, 0, x_axis, y_axis);
if(x_axis == 0 and y_axis == 0){
    len = 0;
}else{
    len = spd;
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
if(vspd > 0) sprite_index = spr_player_down;
else if(vspd < 0)sprite_index = spr_player_up;

if(hspd > 0) sprite_index = spr_player_right;
else if(hspd < 0) sprite_index = spr_player_left;

