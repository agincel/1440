/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, 0, x, y);


if (risingOpacity) {
	currentOpacity += deltaOpacity;
	if (currentOpacity >= 1)
		risingOpacity = false;
} else {
	currentOpacity -= deltaOpacity;
	if (currentOpacity <= 0) {
		risingOpacity = true;	
	}
}
	
draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_white, currentOpacity);
