/// @description End transaction

with (customer) {
	// Make customer walk out of store
	leaving = true;
}
	

textbox_active = false;
sprite_index = spr_port_empty;
if (!customer.debug) {
	with (obj_fade) {
		global.customersToContinue -= 1;
		if (global.customersToContinue <= 0 && !timeline_running && timeline_exists(timeline_index)) {
			timeline_running = true;	
		}
	}
}
customer = noone;