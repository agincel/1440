/// @description Create queue of customers
customer_queue = ds_queue_create();
customer = noone;
textbox_active = false;

leftX = -75;
rightX = 480;

movingIn = 0;
movingInTotal = room_speed * 1;
isMovingIn = false;
isMovingOut = false;

sprite_index = noone;