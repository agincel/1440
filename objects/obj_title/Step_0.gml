/// @description Insert description here
// You can write your code in this editor

if (device_mouse_check_button_pressed(0, mb_left)) {
	global.doorbell = audio_play_sound(snd_doorbell, 0, false);
	room_goto_next();	
}