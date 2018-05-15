/// @description Insert description here
// You can write your code in this editor

var x_draw_offset = 0;
var y_draw_offset = 0;

if (currentSpace != noone && currentSpace.ID == 10 && !leaving) {
	x_draw_offset = -(linePosition * (sprite_get_width(sprite_index) + 2));
	y_draw_offset = sprite_height + 2;
}

draw_sprite_ext(sprite_index, image_index, x + x_draw_offset, y + y_draw_offset, 1, 1, 0, draw_color, 1);