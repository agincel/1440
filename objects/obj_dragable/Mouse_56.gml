/// @description

is_held = false;
global.itemPriority = noone;

if (!collision_point(x, bbox_bottom, obj_counter, false, false)
		|| place_meeting(x, y, obj_bag) || place_meeting(x, y, obj_register)) {
	x = prev_x;
	y = prev_y;
}