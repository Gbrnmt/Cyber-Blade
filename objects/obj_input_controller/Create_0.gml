/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.game_over = false;
global.batalha = noone;

global.gamepad_id = noone;

gamepad_connect = function()
{
	var _gamepad_slots = gamepad_get_device_count();
	
	for(var _i = 0; _i < _gamepad_slots; _i++)
	{
	    if(gamepad_is_connected(_i))
		{
			global.gamepad_id = _i;
			return true;
		}
	}

     return false;	 
}