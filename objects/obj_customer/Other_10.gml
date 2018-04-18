/// @description enter line

// customer enters the line
var customerId = id;
with (obj_current_customer) {
	ds_queue_enqueue(customer_queue, customerId);
}
