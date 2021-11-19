/// @descr


alarm[0] = room_speed*1;  //loop

var cr_x = room_width/2 + lengthdir_x(room_width/2,irandom(359));
var cr_y = room_height/2 + lengthdir_y(room_height/2,irandom(359));
instance_create_layer(cr_x,cr_y,layer,ob_tracker);