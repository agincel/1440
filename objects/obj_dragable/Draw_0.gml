/// @description Draw self

depth = -y;

if (!is_held) {
	draw_self();
} else {
	depth = -9995; //draw over everything if 
	draw_sprite_ext(sprite_index, image_index, x, y, 1.1, 1.1, 0, c_white, 1);
	//draw_text(50, 50, string(x) + ", " + string(y));
}