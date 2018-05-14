/// @description 

/// @description Initializes new customer
goodbye_conversation = "Textbox/Checkout/delivery_end.json";

items = [obj_item];

currentSpace = get_space(10);
nextSpace = noone;

movementCurrent = 0;
movementTotal = room_speed * 1;
shopping = false;

leaving = false;
linePosition = -1;

spaceDelay = room_speed * 1;

recentSpaceQueue = []
recentSpaceQueueMaxSize = 2;
for (var i = 0; i < recentSpaceQueueMaxSize; i++) {
	recentSpaceQueue[i] = -1;	
}

optimal = false;
stepsTaken = 0;
maxSteps = 7;