// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debug(arg) {
	if (typeof(arg) == "method")
	{
		//# when function
		//#
		//# This can be used like:
		//# debug(function() {
		//#		//
		//# });
		//
		if (dev.debug_mode)
		{
			arg();
		}
	}
	else
	{
		//# or (usually) string
		if (dev.debug_mode)
		{
			show_debug_message(arg);
		}
	}
}