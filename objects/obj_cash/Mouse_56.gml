/// @description Release and make change

if (place_meeting(x, y, obj_register)) {
	obj_register.total = 0;
	instance_destroy();
}

// Inherit the parent event
event_inherited();