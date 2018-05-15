///@description create survivor with dialog

var c = instance_create_depth(-1, -1, 0, obj_customer);
if (!global.stay)
	c.goodbye_conversation = "Textbox/Survivors/4-wow.json";
else
	c.goodbye_conversation = "Textbox/Survivors/4-special.json";