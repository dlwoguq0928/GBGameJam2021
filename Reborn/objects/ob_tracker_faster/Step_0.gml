/// @descr


	
if (speed != 0) 
{
	image_xscale = sign(hspeed);
	image_speed = 0.25;
}
else
{
	image_speed = 0;
}


//if wanted
if (wanted)
{
	//tracker move
	if (p.alarm[1] == -1)
	{
		direction = point_direction(x,y,p.x,p.y);
		speed = t_spd_std + 2;
	}
	
	//attack player
	if place_meeting(x,y,p)
	{
		speed = 0;
	
		if (p.alarm[1] == -1)
		{
			p_hp -= 1;
			//p.x += lengthdir_x(10,point_direction(x,y,p.x,p.y));
			//p.y += lengthdir_y(10,point_direction(x,y,p.x,p.y));
			scr_shake_screen(10);
	
			if(p_hp <= 0) scr_gameover();
		}
	}
	else
	{
	}

	//shot (attack player)
	var dist = point_distance(x,y,p.x,p.y);
	if (dist <= shot_radius)
	{
		speed = 0;
		shoting = true;
	}
	else
	{
		shoting = false;
	}


	//shoting
	if shoting 
	{
		sprite_index = spr_tracker_shot;
		image_xscale = sign(lengthdir_x(1,point_direction(x,y,p.x,p.y)));
	}
	else
	{
		sprite_index = spr_tracker;
	}
}

//solid processing
if place_meeting(x+hspeed,y,ob_parent_solids)
{
	hspeed = 0;
}

if place_meeting(x,y+vspeed,ob_parent_solids)
{
	vspeed = 0;
}