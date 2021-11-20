/// @descr



//set angle according to direction
image_angle = direction;

//attack player
if place_meeting(x,y,p)
{
	instance_destroy();
	p_hp -= 10;
	if (p_hp <= 0)	scr_gameover();
}

