/// @descr


//draw intro
draw_set_alpha(1);
draw_sprite(spr_intros,intro_index,room_width/2,room_height/2);

//appear smooth
var ratio;
if (alarm[0] <= room_speed*2)
{
	ratio = 1 - alarm[0]/(room_speed*2);
}
else if (alarm[0] <= room_speed*4)
{
	ratio = 0;
}
else
{
	ratio = (alarm[0] mod (room_speed*2))/(room_speed*2);
}
draw_set_alpha(ratio);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);


//draw scripts (dialog)
draw_set_alpha(1);
if (intro_index >= 0 && intro_index < 17)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(ft_24);
	var str = scripts[intro_index];
	var str_w = string_width(str);
	var str_h = string_height(str);
	if (str != "")
	{
		draw_set_color(c_black);
		draw_rectangle(room_width/2-str_w/2-10,540-str_h/2-5,room_width/2+str_w/2+10,540+str_h/2+5,false);
	}
	draw_set_color(c_white);
	if (intro_index == 9) draw_set_color(c_red);
	draw_text(room_width/2,540,str);
}





