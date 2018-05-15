/// @description Insert description here
// You can write your code in this editor

if (is_held && has_scanned && place_meeting(x, y, obj_bag)) {
	instance_destroy();
	obj_bag.image_index = 2;
}
	
// Inherit the parent event
event_inherited();