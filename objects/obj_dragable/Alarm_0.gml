/// @description get grabbed

if (global.itemPriority == id) {
	//we get grabbed
	is_held = true;
	if (!window_get_fullscreen()) {
		x_offset = x - window_mouse_get_x();
		y_offset = y - window_mouse_get_y();
	} else {
		x_offset = x - floor(display_mouse_get_x() / 2);
		y_offset = y - floor(display_mouse_get_y() / 2);
	}
	
	prev_x = x;
	prev_y = y;
}