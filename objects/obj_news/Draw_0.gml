/// @description Draw the closed captions

draw_set_font(fnt_closed_caption);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_shadow_ext(x, y, displayString, 2, c_black, c_white, 22, 650);