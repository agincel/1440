///@description check if "adm" has been typed -- if yes, spawn adam

with (obj_current_customer) {
	if (pressedA && pressedD && pressedA2 && pressedM) {
		var adam = instance_create_depth(0, 0, 0, obj_customer);
		adam.debug = true;
		adam.items = [];
		for (var i = 0; i < 20; i++) {
			adam.items[i] = obj_slurpee;	
		}
		adam.optimal = true;
		adam.goodbye_conversation = "Textbox/adam.json";
		adam.hello_news = "Textbox/adam-news.json";
		adam.i_index = 30;
		hasCreatedAdam = true;
	}
}