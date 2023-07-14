/// @description Pontuação de Vida
// Você pode escrever seu código neste editor
var _cor = make_color_rgb(0,255,0);
var _largura = display_get_width();
var _altura = display_get_height();

draw_set_font(fnt_principal);

if room == rm_Inicio
{
	if alfa <= 0
	{
		alfa_add = 0.05;
	}
	else if alfa >=1
	{
		alfa_add -= 0.05;
	}
	
	alfa += alfa_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_largura/3,_altura/3,"Destrua os Asteroides e ganhe o Jogo", 30,500,_cor,_cor,_cor,_cor, 1);
	draw_text_color(_largura/2,_altura - _altura/3,"Pressione Enter para Jogar", _cor,_cor,_cor,_cor, alfa);
	
	
	if keyboard_check_pressed(vk_enter)
	{
		room_goto(rm_Jogo);
	}
}

else if room == rm_Jogo
{
		draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	
	draw_text_color(20,20, "Vida: " + string(obj_nave.vida), _cor,_cor,_cor,_cor,1);
	draw_text_color(20,45, "Pontos: " + string(global.pontuacao), c_red,c_red,c_red,c_red,1);
}
else if room == rm_Menu
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if alfa <= 0
	{
		alfa_add = 0.05;
	}
	else if alfa >=1
	{
		alfa_add -= 0.05;
	}
	
	alfa += alfa_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if global.Vida <= 0
	{
		draw_text_ext_color(_largura/3,_altura/3,"Game Over. Pontos: "+ string(global.pontuacao), 30,500,_cor,_cor,_cor,_cor,1);
	}
	else
	{
		draw_text_ext_color(_largura/3,_altura/3,"Vitoria. Pontos: "+ string(global.pontuacao), 30,500,_cor,_cor,_cor,_cor,1);
	}
	
	draw_text_color(_largura/2,_altura - _altura/3,"Pressione Enter para Jogar", _cor,_cor,_cor,_cor, alfa);
		
	
	if keyboard_check_pressed(vk_enter)
	{
		game_restart();
	}
}