///@description they left, fade back out
show_debug_message("destroy customers, fade out");
with (obj_customer) {
	instance_destroy();	
}

with (obj_fade) {
	fadingIn = true;
	fadeScript = scr_nuke7;
}
global.customersToContinue = 0;
timeline_running = false;
