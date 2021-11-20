// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particle_generate(x,y,spr,range,spd){
	var cr_x = x + choose(-1,1)*random(range)
	var cr_y = y + choose(-1,1)*random(range)
	var inst = instance_create_layer(cr_x,cr_y,layer,ob_particle);
	inst.sprite_index = spr;
	inst.direction = irandom(359);
	inst.speed = spd;
}