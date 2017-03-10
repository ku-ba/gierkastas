///get input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord('C'));

// get the axis
x_axis = (right_key - left_key);
y_axis = (down_key - up_key);

