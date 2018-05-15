///@description first customer has left, tell the others to leaves

if (!global.stay)
	load_conversation("Textbox/Nuke/5-customer.json", 0);
else
	load_conversation("Textbox/Nuke/5-stay.json", 0);

timeline_running = false;