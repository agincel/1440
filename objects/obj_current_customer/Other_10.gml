/// @description Place items

var items = customer.items;
var itemRangeX = 75;
var itemRangeY = 25;

var numItems = array_length_1d(items);

if (numItems > 0) {
	for (var i = 0; i < numItems; i++) {
		instance_create_depth(obj_money_place.x + irandom_range(-1 * itemRangeX, itemRangeX), 
							  obj_money_place.y + irandom_range(-1 * itemRangeY, itemRangeY), 0, items[i]);
	}
	
	instance_create_depth(800, 320, 0, obj_bag);
}


if (global.newsOverride != "") {
	load_conversation(global.newsOverride, 1);
	global.newsOverride = "";
}

