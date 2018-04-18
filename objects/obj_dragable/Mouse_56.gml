/// @description
if (is_held && returning && place_meeting(x, y, obj_current_customer))
	return_to_customer();

is_held = false;
global.itemPriority = noone;

if (!collision_point(x, bbox_bottom, obj_counter, false, false)) {
	x = prev_x;
	y = prev_y;
}