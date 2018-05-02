if (global.newsOverride == "Textbox/News/ticker1.json") {
	load_conversation("Textbox/News/ticker1-reply.json", 0);
	global.newsOverride = "";
} else if (global.newsOverride == "Textbox/News/ticker2.json") {
	load_conversation("Textbox/News/ticker2-reply.json", 0);
	global.newsOverride = "";
}