/// @description NEXT

if (array_length_1d(arr) > 1) {
	//there's more conversation to be had
	var new_arr = -1;
	// show_debug_message("Arr: " + string(arr));
	for (var i = 0; i < array_length_1d(arr) - 1; i++) {
		new_arr[i] = arr[i + 1];	
	}
	// show_debug_message("New_arr: " + string(new_arr));
	news(new_arr);
	instance_destroy();
} else {
	if (!is_undefined(a.endScript) && a.endScript != -1 && a.endScript != "-1" && asset_get_index(a.endScript) > 0) {
		script_execute(asset_get_index(a.endScript));	
	}
			
	if (!is_undefined(a.endFile) && a.endFile != -1 && a.endFile != "-1") {
		load_conversation(a.endFile, 1);	
	}
	instance_destroy();
}	