/// @descr

//# room speed 30 기준 0.33초에 걸쳐 사라짐
alpha -= 0.1;
if (alpha <= 0)
{
	instance_destroy();
}
