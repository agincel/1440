/// @description Insert description here
// You can write your code in this editor

if (is_held && has_scanned && place_meeting(x, y, obj_bag))
	instance_destroy();
	
// Inherit the parent event
event_inherited();