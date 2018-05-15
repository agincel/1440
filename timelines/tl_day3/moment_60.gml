///@description Create FEMA guy
var fema_guy = instance_create_depth(-1, -1, 0, obj_customer);

with (fema_guy) {
	goodbye_conversation = "Textbox/Checkout/";
	
	items = [];
	
	portrait = port_fema;
	draw_color = make_color_hsv(98, 33, 46);
	
	optimal = true;
}