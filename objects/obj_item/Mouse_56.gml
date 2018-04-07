/// @description
is_held = false;
global.itemPriority = noone;

if (!place_meeting(x, y, obj_counter)) {
	x = prev_x;
	y = prev_y;
}