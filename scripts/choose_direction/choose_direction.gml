/// @argument spaceToChooseFrom

var target = noone;
while (target == noone && target != 0) {
	var i = irandom_range(0, 3);
	if (i == 0 && argument0.up != noone) {
		target = argument0.up;
	} else if (i == 1 && argument0.left != noone) {
		target = argument0.left;	
	} else if (i == 2 && argument0.right != noone) {
		target = argument0.right;	
	} else if (argument0.down != noone) {
		target = argument0.down;
	}
}
return target;