/// @description colisão escudo
// Você pode escrever seu código neste editor
audio_play_sound(snd_melhoria, 1, false);
escudo = true;
alarm[1] = 300;
with(other)
{
	instance_destroy();
}


