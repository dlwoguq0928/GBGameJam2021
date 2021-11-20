/// @descr


//draw absorber screen splash
if (alarm[1] != -1)
{
	var ratio = 1 - alarm[1]/(room_speed*2);
	draw_set_color(c_white);
	draw_set_alpha(ratio);
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
	draw_set_alpha(1);
}