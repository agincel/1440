/// @description Insert description here
// You can write your code in this editor

depth = -y;

if (!is_held) {
	draw_self();
} else {
	depth = -9998; //draw over everything if 
	draw_sprite_ext(sprite_index, 0, x, y, 1.1, 1.1, 0, c_white, 1);
}

if (has_scanned) {
	draw_sprite(spr_checkmark, 0, bbox_right, bbox_top);
}	