/// @description Initializes new customer

randomize();

goodbye_conversation = "checkedOutMessage.json";
items = -1;
for (var i = 0; i < irandom_range(1, 5); i++) {
	items[i] = obj_item;	
}
portrait = port_generic;

currentSpace = get_space(0);
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