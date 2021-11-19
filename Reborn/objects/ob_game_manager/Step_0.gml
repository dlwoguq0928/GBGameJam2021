/// @descr

//player move
with(ob_parent_not_players)
{
	direction = p_dir - 180;
	speed = p_spd;
	
	p.image_xscale = sign(lengthdir_x(p_dir,p_spd));
}

//tracker move
with(ob_parent_trackers)
{
	motion_add(point_direction(x,y,p.x,p.y),t_spd_std);

	image_xscale = sign(lengthdir_x(t_spd_std,point_direction(x,y,p.x,p.y)));
}

//reduce the timeline
if (timeline > 0)
{
	timeline -= 1/room_speed;
	if (timeline < 0)
	{
		timeline = 0;
	}
}