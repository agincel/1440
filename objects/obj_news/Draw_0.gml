/// @description Draw the closed captions

draw_set_font(fnt_closed_caption);
draw_set_color(c_black);
draw_sprite(sprite_index, 0, 0, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (view_current == 0) {
	draw_text(textX, sprite_height / 2, displayString);
	textX -= xPerFrame;
	movedX += xPerFrame;
	if (movedX > width) {
		if (!textComplete) {
			textComplete = true;
			alarm[2] = room_speed * 1;
		}
	}
}