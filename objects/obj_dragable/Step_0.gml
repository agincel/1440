/// @description Insert description here
// You can write your code in this editor

if (is_held) {
	if (window_get_fullscreen()) {
		x = floor(display_mouse_get_x() / 2) + x_offset;
		y = floor(display_mouse_get_y() / 2) + y_offset;
	} else {
		x = window_mouse_get_x() + x_offset;
		y = window_mouse_get_y() + y_offset;
	}
}