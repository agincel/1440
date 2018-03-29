/// @description temp go to next box

if (textComplete) {
	//time to do a thing
	
	if (array_length_1d(arr) > 1) {
		//there's more conversation to be had
		var new_arr = -1;
		show_debug_message("Arr: " + string(arr));
		for (var i = 0; i < array_length_1d(arr) - 1; i++) {
			new_arr[i] = arr[i + 1];	
		}
		show_debug_message("New_arr: " + string(new_arr));
		textbox(new_arr);
		instance_destroy(id);
	} else {
		//last one of the conversation, do stuff depending on type
		if (a.type == "plain") { //if plain, check for valid endScript and endFile, execute if needed
			if (!is_undefined(a.endScript) && a.endScript != -1 && a.endScript != "-1") {
				script_execute(asset_get_index(a.endScript));	
			}
			
			if (!is_undefined(a.endFile) && a.endFile != -1 && a.endFile != "-1") {
				load_conversation(a.endFile);	
			}
			
		} else if (a.type == "yesno") { //if yesno, check for valid yes/noScript/File, and execute if needed
			var choice = get_string("0 for no 1 for yes", "");
			if (choice == "0") {
				if (!is_undefined(a.noScript) && a.noScript != -1 && a.noScript != "-1") {
					script_execute(asset_get_index(a.noScript));	
				}
				
				if (!is_undefined(a.noFile) && a.noFile != -1 && a.noFile != "-1") {
					load_conversation(a.noFile);	
				}
				
			} else {
				if (!is_undefined(a.yesScript) && a.yesScript != -1 && a.yesScript != "-1") {
					script_execute(asset_get_index(a.yesScript));	
				}
				
				if (!is_undefined(a.yesFile) && a.yesFile != -1 && a.yesFile != "-1") {
					load_conversation(a.yesFile);	
				}
			}
		}
		
		instance_destroy(id);
	}
}