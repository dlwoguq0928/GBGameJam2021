// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_particle_generate(){
	var inst = instance_create_depth(p.x,p.y,-p.y,ob_blood);
	inst.x = p.x + random_range(-20,20);
	inst.y = p.y + random_range(-20,20);
	inst.direction = irandom(359);
	inst.speed = 5;
	
	var scale = random_range(1,2);
	inst.image_xscale = scale;
	inst.image_yscale = scale;
}