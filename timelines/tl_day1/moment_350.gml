///@description spawn one more customer, newsticker flag

var c = instance_create_depth(-1, -1, 0, obj_customer);
//global.newsOverride = "Textbox/News/ticker1.json";
load_conversation("Textbox/News/ticker1.json", 1);
global.textOverride = "Textbox/News/ticker1-reply.json";
global.customersToContinue = 1;
timeline_running = false;