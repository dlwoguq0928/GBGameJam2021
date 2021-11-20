/// @descr


//draw stage
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_32);
draw_set_colour(c_white);
if (selected_stage == 1 || selected_stage == 2)
{
	if !tutorial_cleared
	{
		draw_set_color(c_gray);
	}
}
draw_text(room_width/2,room_height/2,"STAGE - "+string(selected_stage));