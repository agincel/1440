/// @description Insert description here
// You can write your code in this editor
if (!has_scanned) {
	has_scanned = true;
	
	audio_play_sound(snd_scan, 0, false);
	
	with (obj_register) {
		total += other.prices[other.sprite_index];	
	}
	other.currentOpacity = 1;
	other.risingOpacity = false;
	
	if (all_items_scanned()) {
		// Begin Checkout
		var tax_rate = 1.0725;
		with (obj_register) {
			total *= tax_rate;
		}
		
		// Puts cash on counter
		with (obj_money_place) {
			instance_create_depth(x, y, -9999, obj_cash);
		}
	}
}