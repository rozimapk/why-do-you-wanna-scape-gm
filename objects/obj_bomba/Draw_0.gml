
if pega == 0
{
	var _tempo = current_time * 0.07;
	var _distancia = 32; 
	var _qtd = 3;

	for (var i = 0; i < _qtd; i++)
	{
	    var _angulo_orbita = _tempo + (i * (360 / _qtd));
    
	    var _tx = x + lengthdir_x(_distancia, _angulo_orbita);
	    var _ty = y + lengthdir_y(_distancia, _angulo_orbita);
    
	    draw_sprite_ext(spr_triangulo, 0, _tx , _ty, 1, 1, _angulo_orbita * 2, c_white, 0.3);
	}
	
}

draw_self();