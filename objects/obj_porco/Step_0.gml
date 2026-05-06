/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//checando se esta no chao
var _chao = place_meeting(x, y + 1, obj_block);

if (_chao)
{
	tempo_decidir_andar -= 1;
	
	if (tempo_decidir_andar <= 0)
	{
		andando = choose(true, false)

		if(andando)
		{
			velh = choose(vel, -vel)
		}
		else
		{
			velh = 0;
		}

		tempo_decidir_andar = room_speed * 3;
	}
	
	if ( velh != 0 )
	{
		sprite_index = spr_inimigo_porco_walk;
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_inimigo_porco_idle;
	}
	
	if (place_meeting(x + velh, y, obj_block))
	{
		velh *= -1;
	}
	if (pode_cair == false)
	{
		if (place_meeting(x + (velh * 10), y + 1, obj_block) == false)
		{
			velh *= -1;
		}
	}
}
else
{
	velv += grav;
	
	if(velh != 0)
	{
		image_xscale = sign(velh); 
	}
}
