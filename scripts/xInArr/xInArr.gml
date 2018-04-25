/// @argument X to check
/// @argument arr array to check
var ret = false;
for (var i = 0; i < array_length_1d(argument1); i++) {
	if (argument1[i] > 0 && argument1[i].ID == argument0)
		ret = true;
}
return ret;