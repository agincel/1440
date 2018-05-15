/// @description Increment character by one, display new string. 
//If at end of string, prompt user to either select a dialog option or continue.
/*
var c = string_char_at(sourceString, currentCharacter);
var additionalDelay = 0;
if (c == "\\") {
	//the next character is n for newline, add both
	displayString += c;
	currentCharacter += 1;
	c = string_char_at(sourceString, currentCharacter); //add a second character
	displayString += c;
	currentCharacter += 1;
} else {
	//increment until next space, or end of string
	while (c != " " && currentCharacter <= string_length(sourceString)) {
		displayString += c;
		currentCharacter += 1;
		c = string_char_at(sourceString, currentCharacter);
		additionalDelay += 3;
	}
	displayString += c;
	currentCharacter += 1;
	c = string_char_at(sourceString, currentCharacter);
}

if (currentCharacter > string_length(sourceString)) {
	//if the strings are the same, we're at the end of this textbox
	if (!textComplete) {
		textComplete = true;
		alarm[2] = room_speed * 1.5;
	}
} else {
	alarm[1] = textWait + floor(additionalDelay); //in textWait frames, increment again
}

*/