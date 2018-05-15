/// @description Initializes new customer

#region Set checkout conversation
goodbye_conversation = "Textbox/Checkout/Generics/generic";

var numConvs = 0;
var fname = goodbye_conversation + string(numConvs) + ".json";
while (file_exists(fname)) {
	generic_conversations[numConvs] = goodbye_conversation + string(numConvs) + ".json";
	numConvs++;
	fname = goodbye_conversation + string(numConvs) + ".json";
}
goodbye_conversation += string(irandom_range(0, numConvs - 1)) + ".json";
#endregion

#region Set Items
items = [];
for (var i = 0; i < irandom_range(1, 5); i++) {
	items[i] = obj_item;	
}
#endregion

#region Set sprite info
portrait = port_generic;
i_index = irandom_range(0, sprite_get_number(port_generic) - 1);

var draw_colors = [ make_color_rgb(105, 77, 71),
					make_color_rgb(190, 127, 162),
					make_color_rgb(221, 155, 167),
					make_color_rgb(217, 120, 110),
					make_color_rgb(176, 120, 99),
					make_color_rgb(192, 139, 67),
					make_color_rgb(111, 112, 107),
					make_color_rgb(81, 50, 73),
					make_color_rgb(68, 49, 44),
					make_color_rgb(107, 95, 90)];

draw_color = draw_colors[i_index % 10];
#endregion

#region Store movement info
currentSpace = get_space(0);
nextSpace = noone;

movementCurrent = 0;
movementTotal = room_speed * 1;
shopping = false;

leaving = false;
linePosition = -1;

stop = false;

maxSpaceDelay = room_speed * 1;

recentSpaceQueue = []
recentSpaceQueueMaxSize = 2;
for (var i = 0; i < recentSpaceQueueMaxSize; i++) {
	recentSpaceQueue[i] = -1;	
}

optimal = false;
stepsTaken = 0;
maxSteps = 7;
#endregion
