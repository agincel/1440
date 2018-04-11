/// @description Draw self and scanned indicator

// Inherit the parent event
event_inherited();

if (has_scanned) {
	draw_sprite(spr_checkmark, 0, bbox_right, bbox_top);
}