/// @description play doorbell

if (!audio_is_playing(global.doorbell)) {
	global.doorbell = audio_play_sound(snd_doorbell, 0, false);	
}