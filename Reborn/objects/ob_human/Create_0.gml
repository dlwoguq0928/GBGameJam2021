/// @descr

// Inherit the parent event
event_inherited();

for(i=0;i<instance_number(object_index);i++)
{
	if (instance_find(object_index,i) == id)
	{
		my_index = i;
	}
}

switch(my_index)
{
	default:	break;
	case 0:
		sprite_index = spr_human;
		break;
	case 1:
		sprite_index = spr_human2;
		break;
	case 2:
		sprite_index = spr_human3;
		break;
	case 3:
		sprite_index = spr_human4;
		break;
	case 4:
		sprite_index = spr_human5;
		break;
}