/// @description Update surface
/*
 If our kind is one of the kinds needing
 our second surface, we make sure to draw and update
 the surface.
 This will update the surface every step, thus animate
 the surface.
*/
if kind == transition.push_left || kind == transition.push_right || kind == transition.push_up || kind == transition.push_down {
 surface_set_target(surface_to);
 draw_clear(c_black);
 draw_enable_alphablend(false);
 draw_set_colour_write_enable(true,true,true,false);
 draw_surface(application_surface,0,0);
 draw_set_colour_write_enable(true,true,true,true);
 draw_enable_alphablend(true);
 surface_reset_target();
}

/* */
/*  */
