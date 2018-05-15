/// @description Insert description here
// You can write your code in this editor

if (nextSpace == noone && !shopping && !leaving && alarm[0] < 0) {
	if (stepsTaken > maxSteps)
		optimal = true;

	//select a new space
	nextSpace = choose_direction(currentSpace);
	nextSpace = get_space(nextSpace);
	stepsTaken++;
	movementCurrent = 0;
	alarm[0] = random(maxSpaceDelay);
} else if (nextSpace == noone && leaving) {
	var spaces = -1;
	spaces[10] = 6;
	spaces[6] = 3;
	spaces[3] = 0;
	
	if (currentSpace.ID != 0) {
		nextSpace = get_space(spaces[currentSpace.ID]);
		movementCurrent = 0;
	} else {
		instance_destroy();
	}
}

if (nextSpace != noone && alarm[0] < 0) {
	if (!stop)
		movementCurrent += 1;
	x = lerp(currentSpace.x, nextSpace.x, movementCurrent / movementTotal);
	y = lerp(currentSpace.y, nextSpace.y, movementCurrent / movementTotal);
	if (movementCurrent >= movementTotal) {
		currentSpace = nextSpace;
		nextSpace = noone;
		
		//enqueue the current space into the recentSpaceQueue
		for (var i = 1; i < recentSpaceQueueMaxSize; i++) {
			recentSpaceQueue[i] = recentSpaceQueue[i - 1];
		}
		recentSpaceQueue[0] = currentSpace;
		
		if (currentSpace.ID == 10)  { //we're at the line
			shopping = true;
			linePosition = ds_queue_size(obj_current_customer.customer_queue);
			if (obj_current_customer.customer != noone)
				linePosition += 1;
			event_user(0);
		} else if (currentSpace.ID == 0) {
			instance_destroy();	
		}
	}
}