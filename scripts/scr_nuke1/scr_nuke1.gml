load_conversation("Textbox/Nuke/1-narration.json", 0);

var hasMoved = false;
with (obj_customer) {
	if (!hasMoved) {
		hasMoved = true;
		nextSpace = get_space(10);
		movementCurrent = movementTotal / 2;
	} else {
		movementCurrent = 0;	
	}
}