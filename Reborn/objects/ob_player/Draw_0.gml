/// @descr


//draw range of the absorber able
if instance_exists(absorber_creature)
{
	var dist = point_distance(x,y,absorber_creature.x,absorber_creature.y);
	if (dist <= absorber_radius)
	{
		draw_set_alpha(0.5);
		draw_set_colour(c_red);
		draw_circle(absorber_creature.x,absorber_creature.y,absorber_radius,false);
		draw_set_alpha(1);
	}
}

//draw self
draw_self();