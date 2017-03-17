//
scr_check_for_player();

    //FIX for quake when deltax or deltay are very very small
   /* var deltax = sign(targetx - x) * (targetx - x);
    var deltay = sign(targety - y) * (targety - y);
    
    //move towards player
    if(deltax>1) phy_position_x += sign(targetx - x) * spd;
    if(deltay>1) phy_position_y += sign(targety - y) * spd;*/
    
    var dir = point_direction(x, y, targetx, targety);
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    
    if(hspd!=0) image_xscale = sign(hspd);
    phy_position_x += hspd;
    phy_position_y += vspd;

