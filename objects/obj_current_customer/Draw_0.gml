/// @description draw portrait and maybe bag
if (sprite_index != noone)
	draw_self();

if (isMovingOut && array_length_1d(customer.items) > 0)
	draw_sprite(spr_baggie, 0, x - 50, y - 50);