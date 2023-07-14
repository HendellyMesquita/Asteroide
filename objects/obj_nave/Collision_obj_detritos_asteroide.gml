/// @description colião com detritos asteroide 
// Você pode escrever seu código neste editor

if alarm[0] <=0
{
	if escudo == true
	{
		escudo = false
	}
	else
	{
		vida -=1;
	}
	with(other)
	{
		vida -= 1;
	}
	alarm[0] = 100;
	
}
