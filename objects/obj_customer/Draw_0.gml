/// @description Insert description here
// You can write your code in this editor
if (currentSpace != noone && (currentSpace.ID != 10 || leaving)) {
	draw_self();	
} else if (currentSpace != noone && currentSpace.ID == 10 && !leaving) {
	//draw x offset by line
	draw_sprite(sprite_index, 0, x - (linePosition * (sprite_get_width(sprite_index) + 2)), y + sprite_height + 2);
}