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
draw_sprite_ext(spr_absorbar_icon,0,button_origin_x,button_origin_y,1,1,0,(absorber_cooldown == 0) ? c_white : c_gray,1);
draw_pie(button_origin_x,button_origin_y,absorber_cooldown,absorber_cooldown_std,c_dkgray,button_radius,0.5);
draw_set_alpha(1);