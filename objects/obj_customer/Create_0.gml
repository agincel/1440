/// @description Initializes new customer

randomize();

goodbye_conversation = "Textbox/Checkout/Generics/generic";
//generic_conversations = ["generic1.json", "generic2.json", "generic3.json"];

var numConvs = 0;
var fname = goodbye_conversation + string(numConvs) + ".json";
while (file_exists(fname)) {
	generic_conversations[numConvs] = goodbye_conversation + string(numConvs) + ".json";
	numConvs++;
	fname = goodbye_conversation + string(numConvs) + ".json";
}
goodbye_conversation += string(irandom_range(0, numConvs - 1)) + ".json";

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

maxSpaceDelay = room_speed * 1;

recentSpaceQueue = []
recentSpaceQueueMaxSize = 2;
for (var i = 0; i < recentSpaceQueueMaxSize; i++) {
	recentSpaceQueue[i] = -1;	
}

optimal = false;
stepsTaken = 0;
maxSteps = 7;