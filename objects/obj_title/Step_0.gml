/// @description Insert description here
// You can write your code in this editor

if (device_mouse_check_button_pressed(0, mb_left) || keyboard_check_pressed(vk_space)) {
	global.doorbell = audio_play_sound(snd_doorbell, 0, false);
	room_goto_next();	
}

if (keyboard_check_pressed(vk_escape)) {
	game_end();	
}

if (keyboard_check_pressed(ord("F"))) {
	window_set_fullscreen(!window_get_fullscreen());	
}