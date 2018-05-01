///@description spawn first customer, pause
var c = instance_create_depth(-1, -1, 0, obj_customer);
c.optimal = true;
timeline_running = false;