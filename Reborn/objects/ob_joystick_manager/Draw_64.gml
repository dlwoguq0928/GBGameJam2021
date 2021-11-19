/// @descr


//draw joystick
draw_set_colour(c_white);
draw_set_alpha(0.5);
draw_circle(joystick_origin_x,joystick_origin_y,joystick_radius,false);
draw_circle(joystick_point_x,joystick_point_y,joystick_point_radius,false);
draw_set_alpha(1);