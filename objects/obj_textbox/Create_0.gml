/// @description Insert description here
// You can write your code in this editor
sourceString = "Hello,^6 this is a long test string where I'm not entirely sure what to say except this dialog box needs to be slightly long.^9^5 Yay.";
displayString = "";

currentCharacter = 1;
charsPerLine = 46; //if change font, probably change this.

textWait = 2;

arr = -1; //this will end up being an array of struct_conversations
a = -1;
textComplete = false;
alarm[0] = 1;