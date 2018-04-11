/// @description Insert description here
// You can write your code in this editor
if (!has_scanned) {
	has_scanned = true;
	
	audio_play_sound(snd_scan, 0, false);
	
	with (obj_register) {
		total += other.price;	
	}
	
	if (all_items_scanned()) {
		// Begin Checkout
		var tax_rate = 1.0725;
		with (obj_register) {
			total *= tax_rate;
		}
		
		// Puts chash on counter
		with (obj_scanner) {
			instance_create_depth(x, bbox_top, -9999, obj_cash);
		}
	}
}