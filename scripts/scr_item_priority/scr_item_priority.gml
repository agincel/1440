/// @argument item_id
if (global.itemPriority == noone) {
	global.itemPriority = argument0;
} else if (argument0.y > global.itemPriority.y) {
	global.itemPriority = argument0;
}