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
	direction = point_direction(x,y,p.x,p.y);
	speed = t_spd_std;
	
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
		image_xscale = sign(lengthdir_x(1,point_direction(x,y,p.x,p.y)));
	
		shot_tick += 1;
		if (shot_tick >= shot_delay)
		{
			shot_tick = 0;
			var inst = instance_create_layer(x,y,"Instances",ob_bullet);
			inst.direction = point_direction(x,y,p.x,p.y);
			inst.speed = 10;
			
			//efs
			audio_play_sound(snd_efs_gunshot,1,false);
		
			if (alarm[1] == -1)
			{
				sprite_index = spr_tracker_gun_shot;	
				alarm[1] = room_speed*0.5;
			}
		}
	}
	else
	{
		sprite_index = spr_tracker_gun;
	}
}


//solid processing
if place_meeting(x+hspeed,y,ob_parent_walls)
{
	hspeed = 0;
}

if place_meeting(x,y+vspeed,ob_parent_walls)
{
	vspeed = 0;
}

//depth processing
depth = -y;