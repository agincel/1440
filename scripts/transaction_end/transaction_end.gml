with (obj_current_customer) {
	with (customer) {
		// Make customer walk out of store
		instance_destroy(id);
	}
	
	customer = noone;
	textbox_active = false;
	sprite_index = spr_port_empty;
}