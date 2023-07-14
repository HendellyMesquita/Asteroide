/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Codigos Escrito na aba etapa,execulta por N° frames por segundo 

global.Vida = vida;

if keyboard_check(ord("W"))
{
	sprite_index = spr_nave_andando
	speed = velocidade;
}
else if keyboard_check(ord("S"))
{
	sprite_index = spr_nave_andando
	speed = -velocidade;
}
else
{
	sprite_index = spr_nave_parada
	speed = lerp(speed, 0, 0.07);
}
if keyboard_check(ord("A"))
{
	 direcao = 3;
}
else if keyboard_check(ord("D"))
{
	 direcao = -3;
}
else
{
	direcao = lerp(direcao, 0, 0.07);
}

if keyboard_check_pressed(vk_space)
{
	audio_play_sound(snd_projetil, 1, false);
	
	var projetilNaveId = instance_create_layer(x,y,"Instances",obj_nave_projetil);
	projetilNaveId.speed = 6;
	projetilNaveId.direction = direction;
	projetilNaveId.image_angle = direction;
	projetilNaveId.dano = dano_nave;

}

direction += direcao;
image_angle = direction;
move_wrap(true, true, 0);

if alarm[0]> 0
{
	if image_alpha <=0
	{
		transparencia = 0.05;
	}
	else if image_alpha >= 1
	{
		transparencia = -0.05;
	}
	
	image_alpha += transparencia;
}
else 
{
	image_alpha = 1;
}

if global.Vida <= 0
{
	
	room_goto(rm_Menu);
}

else if global.pontuacao >= 2115
{

room_goto(rm_Menu);
}