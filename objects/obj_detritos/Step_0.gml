/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_angle += rotacao

image_alpha -= 0.02;

if image_alpha <= 0
{
	instance_destroy();
}
