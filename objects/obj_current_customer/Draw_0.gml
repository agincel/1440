/// @description draw portrait and maybe bag
if (sprite_index != noone)
	draw_self();

if (isMovingOut && array_length_1d(customer.items) > 0)
	draw_sprite(spr_bag, 0, x - 75, y - 50);