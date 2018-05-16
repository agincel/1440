/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_title);
draw_set_halign(fa_left);
draw_set_color(c_black);

draw_text(4, 6, "HAR494: Game Development for Civil Defense");
draw_text(4, 22, "Game By: Adam Gincel, Joseph Gaidos, Robyn Verrill, Taber McFarlin");
draw_text(4, room_height - 20, "Press F to toggle fullscreen");

blink += 1;
if (blink > 60) {
	blink = 0;
}
draw_set_font(fnt_text_box);
draw_set_halign(fa_center);
if (blink > 30) {
	draw_text(room_width * 0.435, 275, "Click to Start");	
}