///@description they left, fade back out

with (obj_customer) {
	instance_destroy();	
}

with (obj_fade) {
	fadingIn = true;
	fadeScript = scr_nuke7;
}

timeline_running = false;
