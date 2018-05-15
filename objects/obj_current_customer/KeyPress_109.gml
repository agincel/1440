/// @description Temorary, creates new customer

var adam = instance_create_depth(0, 0, 0, obj_customer); // Temporary
adam.debug = true;
adam.items = [];
for (var i = 0; i < 20; i++) {
	adam.items[i] = obj_slurpee;	
}
adam.optimal = true;
adam.goodbye_conversation = "adam.json";
adam.i_index = 30;