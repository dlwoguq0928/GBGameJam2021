/// @descr


//draw joystick
draw_set_colour(c_white);
draw_set_alpha(0.7);
draw_circle(joystick_origin_x,joystick_origin_y,joystick_radius,false);
draw_circle(joystick_point_x,joystick_point_y,joystick_point_radius,false);
draw_set_alpha(1);

//draw button
draw_set_colour(c_white);
draw_set_alpha(0.7);
draw_circle(button_origin_x,button_origin_y,button_radius,false);
draw_set_colour(c_black);
draw_set_alpha(0.7);
draw_pie(button_origin_x,button_origin_y,absorber_cooldown,absorber_cooldown_std,c_white,button_radius,0.5);
draw_set_alpha(1);