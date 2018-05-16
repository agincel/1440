///@description create last survivor

var c = instance_create_depth(-1, -1, 0, obj_customer);
c.portrait = port_rattled;
c.draw_color = make_color_rgb(125, 157, 174);
c.goodbye_conversation = "Textbox/Survivors/6-survivor.json";
timeline_running = false;

