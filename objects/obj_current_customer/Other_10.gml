/// @description Place items
// You can write your code in this editor

var items = customer.items;
var itemMinX = 672;
var itemMaxX = 800;
var itemMinY = 352;
var itemMaxY = 408;
for (var i = 0; i < array_length_1d(items); i++) {
	instance_create_depth(itemMinX + random(itemMaxX - itemMinX), 
							itemMinY + random(itemMaxY - itemMinY), 0, items[i]);
}
