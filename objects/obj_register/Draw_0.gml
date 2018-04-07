/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_font(fnt_register); //todo

draw_set_color(c_green);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, "$" + string(total));