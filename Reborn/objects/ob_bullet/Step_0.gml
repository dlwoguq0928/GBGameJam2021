/// @descr



//set angle according to direction
image_angle = direction;

//attack player
if place_meeting(x,y,p)
{
	instance_destroy();
	if (p.alarm[1] == -1)
	{
		p_hp -= 10;
		if (p_hp <= 0)	scr_gameover();
	}
}

//solid processing
if place_meeting(x,y,ob_wall)
{
	instance_destroy();
}