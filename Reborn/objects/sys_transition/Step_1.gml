/// @description Transition
current_step++; //We add one to our counter.

//If our counter surpasses our transition-length we destroy the object, and thereby ends the transition.
if current_step > length {
 instance_destroy();
}

//By using io_clear in the begin step event we stop input from having effect.
if jam {
 io_clear();
}

/*
 If any of the surfaces are not existing for some reason, we simply skip the
 transition by going to the next room (if not already there) and destroying
 this object.
*/
if !surface_exists(surface_from) || !surface_exists(surface_to) {
 if room != next_room {
  room_goto(next_room);
 }
 instance_destroy();
}

/* */
/*  */
