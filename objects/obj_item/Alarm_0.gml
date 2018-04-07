/// @description get grabbed

if (global.itemPriority == id) {
	//we get grabbed
	is_held = true;
	x_offset = x - window_mouse_get_x();
	y_offset = y - window_mouse_get_y();
	
	prev_x = x;
	prev_y = y;
}