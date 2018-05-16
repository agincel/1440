///@description spawn supplier, pause
var supplier = instance_create_depth(-1, -1, 0, obj_customer);
supplier.optimal = true;
supplier.items = [];
supplier.portrait = port_supplier;
supplier.draw_color = c_gray;

global.textOverride = "Textbox/intro.json";
global.customersToContinue = 1;

timeline_running = false;