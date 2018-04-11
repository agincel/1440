/// @description 

if (!is_held && !scr_items_held()) {
	scr_item_priority(id);
	alarm[0] = 1;
}