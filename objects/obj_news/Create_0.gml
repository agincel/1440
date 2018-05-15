/// @description Insert description here
// You can write your code in this editor
sourceString = "Hello,^6 this is a long test string where I'm not entirely sure what to say except this dialog box needs to be slightly long.^9^5 Yay.";
displayString = "";

currentCharacter = 1;
charsPerLine = 58; //if change font, probably change this.

textWait = 19; //number of frames between WORDS, not characters

arr = -1; //this will end up being an array of struct_conversations
a = -1;
textComplete = false;
alarm[0] = 1;

textX = sprite_width;
width = sprite_width; //will add text width soon

xPerFrame = 2;
movedX = 0;

depth = -9997;