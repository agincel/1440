///@description we have faded back in, let the one customer start moving towards us

var hasMoved = false;
with (obj_customer) {
	if (nextSpace == get_space(10) && !hasMoved) {
		hasMoved = true;
		stop = false;
		
		items = [];
		
		global.textOverride = "Textbox/Nuke/2-customer.json";
	}
}

timeline_running = false;