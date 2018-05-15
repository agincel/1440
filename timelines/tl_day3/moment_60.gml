///@description spawn first customer, pause
var c = instance_create_depth(-1, -1, 0, obj_customer);
c.optimal = true;

global.customersToContinue = 1;

timeline_running = false;