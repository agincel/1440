/// @description Insert description here
// You can write your code in this editor

if (nextSpace == noone && !shopping && !leaving) {
	nextSpace = choose_direction(currentSpace);
	show_debug_message(nextSpace);
	nextSpace = get_space(nextSpace);
	movementCurrent = 0;
} else if (nextSpace == noone && leaving) {
	show_debug_message("Go to next leaving space");
	var spaces = -1;
	spaces[10] = 6;
	spaces[6] = 3;
	spaces[3] = 2;
	spaces[2] = 0;
	
	if (currentSpace.ID != 0) {
		nextSpace = get_space(spaces[currentSpace.ID]);
		movementCurrent = 0;
	} else {
		instance_destroy();	
	}
}

if (nextSpace != noone) {
	movementCurrent += 1;
	x = lerp(currentSpace.x, nextSpace.x, movementCurrent / movementTotal);
	y = lerp(currentSpace.y, nextSpace.y, movementCurrent / movementTotal);
	if (movementCurrent >= movementTotal) {
		currentSpace = nextSpace;
		nextSpace = noone;
		if (currentSpace.ID == 10)  { //we're at the line
			shopping = true;
			linePosition = ds_queue_size(obj_current_customer.customer_queue);
			if (obj_current_customer.customer != noone)
				linePosition += 1;
			event_user(0);
		}
	}
}