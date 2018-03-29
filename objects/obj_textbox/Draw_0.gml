/// @description Draw the textbox, the current displayString, and any portraits/additional needed text

draw_self(); //draw the text box background sprite

//let's get the starting x and y for the text
//hardcode at 12, 12

var margin_side = 20;
var margin_top = 12;
var startX = bbox_left + margin_side;
var startY = bbox_top + margin_top;

draw_set_font(fnt_text_box);
draw_set_color(c_black);
draw_set_halign(fa_left);

draw_text_ext(startX, startY, displayString, 28, sprite_get_width(sprite_index) - (margin_side * 2));
