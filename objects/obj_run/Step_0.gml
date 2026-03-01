

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

cadeado_frame += cadeado_speed;

if (cadeado_frame >= sprite_get_number(spr_cadeado))
{
    cadeado_frame = 0;
}



if (y_cadeado > 80)
{
    pode_arrastar = true;
	y_cadeado+= 9;
}


if pode_arrastar
{
	if (mouse_check_button_pressed(mb_left))
	{
	    if (mx >= bar_x && my >= bar_y && my <= bar_y + bar_h)
	    {
	        arrastando = true;
	    }
	}


	if (mouse_check_button_released(mb_left))
	{
	    arrastando = false;
	}


	if (arrastando)
	{

	    var turbo_percent = (mx - bar_x) / bar_w;

    
	    turbo_percent = max(0, turbo_percent);

	    obj_carro_player.turbo = turbo_percent * 100;
	}




	if (obj_carro_player.veloc_turbo > 200)
	{
	    if (obj_fase_manager.texto_completo != "VOCÊ VAI QUEBRAR A MATERIA DENOVO, PARA")
	    {
	        obj_fase_manager.texto_completo = "VOCÊ VAI QUEBRAR A MATERIA DENOVO, PARA";
	        obj_fase_manager.caracteres = 0;
	        obj_fase_manager.exibir = true;
	        obj_fase_manager.pos_y = 200;
	    }
	
		obj_cam_carro.shake_power = 20
	}
	else if (obj_carro_player.veloc_turbo > 100)
	{
	    if (obj_fase_manager.texto_completo != "PARA DE MEXER NA HUD DOS JOGOS, ISSO É VICIO?????, SÓ JOGA OS JOGOS")
	    {
	        obj_fase_manager.texto_completo = "PARA DE MEXER NA HUD DOS JOGOS, ISSO É VICIO?????, SÓ JOGA OS JOGOS";
	        obj_fase_manager.caracteres = 0;
	        obj_fase_manager.exibir = true;
	        obj_fase_manager.pos_y = 200;
	    }
		obj_cam_carro.shake_power = 10
	}
}


