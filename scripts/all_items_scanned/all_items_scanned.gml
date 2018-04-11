
var ret = true;
with (obj_item) {
	if (!has_scanned)
		ret = false;
}

return ret;