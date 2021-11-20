/// @description Transition
//We create teh temporary variables containing the gui width and height for easy access.
var __gui_width = display_get_gui_width();
var __gui_height = display_get_gui_height();
/*
 Below are all the transitions' individual code blocks.
 You can easily add your own kinds by adding a macro
 and by adding its code in here.
 First we check which kind is in use, then we check if
 we should go to the next room (according to the timing
 needed in the particular kind), and then we draw the
 transition, either by drawing the surfaces, or by drawing
 on top of the screen.
*/

//Color fade
if kind == transition.color_fade {
 if room != next_room && current_step == ceil(length/2) {
  room_goto(next_room);
 }
 
 draw_set_alpha(1-abs(current_step-length/2)/(length/2));
 draw_set_color(color);
 draw_rectangle(0,0,__gui_width,__gui_height,false);
 draw_set_alpha(1);
}
//Cross fade
if kind == transition.cross_fade {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,0,0,__gui_width,__gui_height,c_white,1-current_step/length);
}
//Slide left
if kind == transition.slide_left {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,-current_step/length*__gui_width,0,__gui_width,__gui_height,c_white,1);
}
//Slide right
if kind == transition.slide_right {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,current_step/length*__gui_width,0,__gui_width,__gui_height,c_white,1);
}
//Slide up
if kind == transition.slide_up {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,0,-current_step/length*__gui_height,__gui_width,__gui_height,c_white,1);
}
//Slide down
if kind == transition.slide_down {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,0,current_step/length*__gui_height,__gui_width,__gui_height,c_white,1);
}
//Push left
if kind == transition.push_left {
 if room != next_room {
  room_goto(next_room);
 }
 draw_surface_stretched_ext(surface_to,(1-current_step/length)*__gui_width,0,__gui_width,__gui_height,c_white,1);
 draw_surface_stretched_ext(surface_from,-current_step/length*__gui_width,0,__gui_width,__gui_height,c_white,1);
}
//Push right
if kind == transition.push_right {
 if room != next_room {
  room_goto(next_room);
 }
 draw_surface_stretched_ext(surface_to,(-1+current_step/length)*__gui_width,0,__gui_width,__gui_height,c_white,1);
 draw_surface_stretched_ext(surface_from,current_step/length*__gui_width,0,__gui_width,__gui_height,c_white,1);
}
//Push up
if kind == transition.push_up {
 if room != next_room {
  room_goto(next_room);
 }
 draw_surface_stretched_ext(surface_to,0,(1-current_step/length)*__gui_height,__gui_width,__gui_height,c_white,1);
 draw_surface_stretched_ext(surface_from,0,-current_step/length*__gui_height,__gui_width,__gui_height,c_white,1);
}
//Push down
if kind == transition.push_down {
 if room != next_room {
  room_goto(next_room);
 }
 draw_surface_stretched_ext(surface_to,0,(-1+current_step/length)*__gui_height,__gui_width,__gui_height,c_white,1);
 draw_surface_stretched_ext(surface_from,0,current_step/length*__gui_height,__gui_width,__gui_height,c_white,1);
}
//Minimize
if kind == transition.minimize {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,__gui_width/2*current_step/length,__gui_height/2*current_step/length,__gui_width-current_step/length*__gui_width,__gui_height-current_step/length*__gui_height,c_white,1);
}
//Maximize
if kind == transition.maximize {
 if room != next_room {
  room_goto(next_room);
 }
 
 draw_surface_stretched_ext(surface_from,-__gui_width/2*current_step/length,-__gui_height/2*current_step/length,__gui_width+current_step/length*__gui_width,__gui_height+current_step/length*__gui_height,c_white,1-current_step/length);
}

/* */
/*  */
