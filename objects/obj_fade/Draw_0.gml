/// @description Insert description here
// You can write your code in this editor

if (fadingIn) {
	fade += fadeSpeed;
	if (fade > 1) {
		fade = 1;
		fadingIn = false;
		script_execute(fadeScript);
	}
}

if (fadingOut) {
	fade -= fadeSpeed;
	if (fade < 0) {
		fade = 0;
		fadingOut = false;
	}
}

if (textFadingIn) {
	textFade += textFadeSpeed;
	if (textFade > 1) {
		textFade = 1;
		textFadingIn = false;
		script_execute(textFadeScript);
	}
}

if (textFadingOut) {
	textFade -= textFadeSpeed;
	if (textFade < 0) {
		textFade = 0;
		textFadingOut = false;
	}
}

draw_sprite_ext(spr_fade, 0, 0, 0, 1, 1, 0, c_white, fade);
draw_set_font(fnt_closed_caption);
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_set_alpha(textFade);
draw_text(960 / 2, room_height / 2, text);
draw_set_alpha(1);