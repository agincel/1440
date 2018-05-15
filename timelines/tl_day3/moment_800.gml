///@description spawn third customer, pause

var c = instance_create_depth(-1, -1, 0, obj_customer);
global.customersToContinue = 2;
timeline_running = false;