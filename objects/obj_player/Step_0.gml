/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _chao = place_meeting(x, y + 1, obj_block);

var _left, _right, _jump;
// --- Entradas ---
_right = keyboard_check(vk_right) || keyboard_check(ord("D")) or gamepad_axis_value(global.gamepad_id, gp_axislh) > 0.5;
_left  = keyboard_check(vk_left)  || keyboard_check(ord("A")) or gamepad_axis_value(global.gamepad_id, gp_axislh) < -0.5;
_jump  = keyboard_check(vk_space) or gamepad_axis_value(global.gamepad_id, gp_face1)

velh   = (_right - _left) * vel;

//pulando
if(_chao)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
	
	// seu eu estou no chao me movendo
	if (velh !=0)
	{
		
		sprite_index = spr_walk_player_direita;
		//faço olhar para o lado que esta indo
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_idle_player_direita;
	}
	
}
else//nao estou no chao
{
	//mudando sprite
	if (velv < 0)
	{
		sprite_index = spr_jump_player_direita;
	}
	else
	{
		sprite_index = spr_fall_player_direita;
	}
	
	velv += grav;
	if  (velh != 0)
	{
		image_xscale = sign(velh);
	}
}



