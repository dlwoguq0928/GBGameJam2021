/// @descr


alarm[0] = room_speed*3;  //loop

if (instance_number(ob_parent_trackers) < tracker_number[selected_stage])
{
	var dir = irandom(359);
	var cr_x = p.x + lengthdir_x(view_wport[0]/2,dir);
	var cr_y = p.y + lengthdir_y(view_hport[0]/2,dir);
	instance_create_layer(cr_x,cr_y,layer,array_pickone(tracker_objs[selected_stage]));
}