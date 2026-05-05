/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//fazendo a colisao horizontal
// checando se eu estou colidindo com a parede
var _col	= instance_place(x + velh, y, obj_block);
//se eu colidir eu grudo
if( _col)
{
	//checando se eu to indo para direita
	if (velh > 0)
	{
		// grudando na parte esquerda da parede
		x = _col.bbox_left + (x - bbox_right);
	}
	//checando se eu estoi indo pARA A DIREITA
	if (velh < 0)
	{
		x = _col.bbox_right + (x - bbox_left);
	}
	
	velh = 0;
}


x += velh;

var _col	= instance_place(x, y + velv, obj_block);

if( _col)
{
	//checando se eu to indo para direita
	if (velv > 0)
	{
		y = _col.bbox_top + (y - bbox_bottom);
	}
	//checando se eu estoi indo pARA A DIREITA
	if (velv < 0)
	{
		y = _col.bbox_bottom + (y - bbox_top);
	}
	
	velv = 0;
}

y += velv;

