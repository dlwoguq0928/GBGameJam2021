/// @description Setup
enum transition {
 //The different kinds of transitions
 color_fade,
 cross_fade,
 slide_left,
 slide_right,
 slide_up,
 slide_down,
 push_left,
 push_right,
 push_up,
 push_down,
 maximize,
 minimize
}

//Transition variables
next_room = room; //The room to transition to.
kind = transition.cross_fade; //The selected transition.
length = 30; //The transition time in steps.
color = c_black; //The transition color (if needed).
jam = true; //Whether or not to jam the keyboard and mouse - by doing this, no keyboard or mouse input will be recogniced during the transition.

current_step = 0; //Counting how far into the transition we are.

/*
 Here we create two new surfaces, and draw our application
 surface onto the first of them. This works as a screenshot
 of the current room. 
 
 The second surface is only needed for some transition types.
*/

surface_from = -1
surface_to = -1
if surface_exists(application_surface)
{
	surface_from = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
	surface_to = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));

	surface_set_target(surface_from);
	draw_clear(c_black);
	draw_enable_alphablend(false);
	draw_set_colour_write_enable(true,true,true,false);
	draw_surface(application_surface,0,0);
	draw_set_colour_write_enable(true,true,true,true);
	draw_enable_alphablend(true);
	surface_reset_target();
}

//We want to make all our foregrounds invisible, or else they will be drawn on top of the transition.
for(i=0;i<8;i++){
 back_vis[i] = __background_get( e__BG.Visible, i );
 if __background_get( e__BG.Foreground, i ) == true {
  __background_set( e__BG.Visible, i, false );
 }
}

/* */
/*  */
