///@description create survivor with dialog

var c = instance_create_depth(-1, -1, 0, obj_customer);
c.goodbye_conversation = "Textbox/Survivors/1-sad.json";
global.customersToContinue = 6;