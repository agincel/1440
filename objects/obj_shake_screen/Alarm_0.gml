/// @description Play rumble sound, stop bgm
audio_stop_sound(global.bgm);
audio_play_sound(snd_explosion, 0, false);

alarm[1] = room_speed * 1.5;