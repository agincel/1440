/// @description Place items
// You can write your code in this editor

var items = customer.items;
var itemRangeX = 75;
var itemRangeY = 25;

for (var i = 0; i < array_length_1d(items); i++) {
	instance_create_depth(obj_money_place.x + irandom_range(-1 * itemRangeX, itemRangeX), 
							obj_money_place.y + irandom_range(-1 * itemRangeY, itemRangeY), 0, items[i]);
}

instance_create_depth(800, 320, 0, obj_bag);