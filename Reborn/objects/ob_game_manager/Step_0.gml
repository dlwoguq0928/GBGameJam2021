/// @descr

//player move
with(ob_parent_not_players)
{
	direction = p_dir - 180;
	speed = p_spd;
}

//tracker move
with(ob_parent_trackers)
{
	direction = point_direction(x,y,p.x,p.y);
	speed = t_spd_std;

	if (hspeed != 0) image_xscale = sign(hspeed);
}

//player move
with(ob_player)
{
	direction = p_dir;
	speed = p_spd;
	
	if (hspeed != 0) image_xscale = sign(hspeed);
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