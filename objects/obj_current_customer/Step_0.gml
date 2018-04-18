/// @description Create dialogue if done shopping

// Load new customer
if (customer == noone && !ds_queue_empty(customer_queue)) {
	show_debug_message("Customer at counter");
	customer = ds_queue_dequeue(customer_queue);
	
	sprite_index = customer.portrait;
	
	#region Place items
		var items = customer.items;
		var itemMinX = 672;
		var itemMaxX = 800;
		var itemMinY = 352;
		var itemMaxY = 408;
		for (var i = 0; i < array_length_1d(items); i++) {
			instance_create_depth(itemMinX + random(itemMaxX - itemMinX), 
									itemMinY + random(itemMaxY - itemMinY), 0, items[i]);
		}
		#endregion
}

// End transaction with current customer
if (customer != noone && !instance_exists(obj_dragable) && !textbox_active) {
	textbox_active = true;
	show_debug_message("Customer leaving counter");
	load_conversation(customer.goodbye_conversation);
}