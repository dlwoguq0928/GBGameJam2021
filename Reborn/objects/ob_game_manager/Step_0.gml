/// @descr

//approve value to organisms
with(ob_parent_organisms)
{
	if (hspeed != 0)
	{
		image_xscale = sign(hspeed);
	}
}

with(ob_player)
{
	direction = p_dir;
	speed = p_spd;
}

with(ob_parent_trackers)
{
	direction = point_direction(x,y,p.x,p.y);
	speed = t_spd_std;
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