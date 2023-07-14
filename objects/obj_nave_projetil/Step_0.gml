/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Codigos Escrito na aba etapa,execulta por N° frames por segundo 
if y <= 0 || y >= room_height || x <= 0 ||  x >= room_width
{ 
	instance_destroy();
	obj_nave.sprite_index = spr_nave_andando;
} 
image_xscale = dano;
image_yscale = dano;