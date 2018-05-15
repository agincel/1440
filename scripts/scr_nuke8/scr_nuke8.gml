with (obj_fade) {
	text = "The next day...";
	textFadingIn = true;
	textFadeScript = scr_startdaythree;
}

with (obj_news) {
	instance_destroy();	
}

with (obj_customer) {
	instance_destroy();
}

with (obj_item) {
	instance_destroy();	
}