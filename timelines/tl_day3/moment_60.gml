///@description Create FEMA guy
var fema_guy = instance_create_depth(-1, -1, 0, obj_customer);

with (fema_guy) {
	goodbye_conversation = "Textbox/FEMA/1.json";
	
	items = [];
	
	portrait = port_fema;
	draw_color = make_color_rgb(92, 117, 78);
	
	optimal = true;
}

global.customersToContinue = 1;
timeline_running = false;