/// @description Initialize

// Inherit the parent event
event_inherited();

prices[spr_bottle] = 1.99;
prices[spr_chips] = .75;
prices[spr_slurpee] = 2.5;

sprite_index = choose(spr_bottle, spr_chips, spr_slurpee);
has_scanned = false;