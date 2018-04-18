/// @description Release and make change

// Inherit the parent event
event_inherited();

if (!is_held && place_meeting(x, y, obj_register)) {
	obj_register.total = 0;
	
	instance_create_depth(x, y, depth, obj_change);
	
	with (obj_dragable)
		returning = true;
	
	instance_destroy(id);
}