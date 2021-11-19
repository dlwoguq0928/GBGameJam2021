/// @descr


alarm[0] = room_speed*1;  //loop

var cr_x = p.x + lengthdir_x(view_wport[0]/2,irandom(359));
var cr_y = p.y + lengthdir_y(view_hport[0]/2,irandom(359));
instance_create_layer(cr_x,cr_y,layer,ob_tracker);