/// @description Create dialogue if done shopping

// Load new customer
if (customer == noone && !ds_queue_empty(customer_queue)) {
	customer = ds_queue_dequeue(customer_queue);
	with (obj_customer) {
		if (linePosition > 0)
			linePosition -= 1;
	}
	
	sprite_index = customer.portrait;
	image_speed = 0;
	if (sprite_index == port_generic) {
		image_index = irandom_range(0, sprite_get_number(sprite_index) - 1);	
	}
	
	movingIn = 0;
	isMovingIn = true;
}

if (isMovingIn) {
	movingIn += 1;
	x = lerp(leftX, rightX, movingIn / movingInTotal);
	if (movingIn >= movingInTotal) {
		isMovingIn = false;
		event_user(0);
	}
}

if (isMovingOut) {
	movingIn -= 1;
	x = lerp(leftX, rightX, movingIn / movingInTotal);
	if (movingIn <= 0) {
		isMovingOut = false;
		event_user(1);
	}
}

// End transaction with current customer
if (customer != noone && !instance_exists(obj_dragable) && !textbox_active && !isMovingIn) {
	textbox_active = true;
	if (global.newsOverride != "") {
		load_conversation(global.newsOverride, 1);
	} else if (global.textOverride != "") {
		load_conversation(global.textOverride, 0);
		global.textOverride = "";
	} else {
		load_conversation(customer.goodbye_conversation, 0);
	}
}