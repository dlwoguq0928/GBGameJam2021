/// @descr



shot_radius = 0;
shoting = false;

shot_delay = room_speed*1;
shot_tick = 0;

image_blend = c_red;  //faster 표시

//random moving loop
alarm[0] = random_range(room_speed*1,room_speed*2); 