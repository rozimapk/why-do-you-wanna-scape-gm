


if (obj_carro_player.veloc_turbo >= 300)
{
	if (obj_fase_manager.texto_completo != "OLHA O QUE VOCÊ FEZ UHADHSAD ASDOT4-T9KKC")
    {
        obj_fase_manager.texto_completo = "OLHA O QUE VOCÊ FEZ UHADHSAD ASDOT4-T9KKC";
        obj_fase_manager.caracteres = 0;
        obj_fase_manager.exibir = true;
        obj_fase_manager.pos_y = 200;
    }
	if alarm[1] < 0
	{
	   alarm[1] = 120
	}
}

if (ativa)
{
    branco += 0.02; 
}


if (branco >= 1)
{
	
	global.estado = "boss"
    room_goto(rm_creditos); 
}