/// @descr


//random moving loop
alarm[0] = random_range(room_speed*1,room_speed*2); 

if (!wanted)
{
	direction = irandom(359);
	while(direction == 90 || direction == 270)
	{
		direction = irandom(359);
	}
	speed = t_spd_std;
}