///@argument c_arr array of struct_conversations to start a chain of closed captions

//todo, account for the double-wide room
//for now, just hardcoding

var tX = 32;
var tY = room_height * 0.05;

var t = instance_create_depth(tX, tY, -9999, obj_news);
t.arr = argument0;

