// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
// iniciando maquina de estado
function estado() constructor
{
	//iniciando estado
	static inicia = function() {};
	//rodando estado
	static roda = function() {};
	//finalizando estado
	static finaliza = function() {};
}

//funcoes para controlar maquina de estado
//iniciando estado
function inicia_estado(_estado)
{
	//salvando o estado passado em uma variavel
	estado_atual = _estado;
	
	//iniciando o estado atual
	estado_atual.inicia();
}
	
	//rodando o estado
function roda_estado()
{
	estado_atual.roda();
}

//trocando de estado
function troca_estado(_estado)
{
	//finalizando o estado atual
	estado_atual.finaliza();
	
	//rodando o proximo estado
	estado_atual = _estado;
	
	//iniciando o proximo estado
	estado_atual.inicia();
}


//definindo a sprite
function define_sprite(_dir = 0, _sprite_lado, _sprite_frente, _sprite_costa)
{
	var _sprite;
	
	switch(_dir)
	{
		case 0: _sprite = _sprite_lado; break;
		case 1: _sprite = _sprite_costa; break;
		case 2: _sprite = _sprite_lado; break;
		case 3: _sprite = _sprite_frente; break;	
	}
	return _sprite;
}