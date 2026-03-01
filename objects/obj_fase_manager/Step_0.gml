

if (!instance_exists(obj_transicao)) 
{
    if (global.estado == "plataforma" && room != rm_plataforma1) 
    {
        var _t = instance_create_depth(0, 0, -9999, obj_transicao);
        _t.proxima_room = rm_plataforma1;
    }
    
    if (global.estado == "top" && room != room_rpg) 
    {
        var _t = instance_create_depth(0, 0, -9999, obj_transicao);
        _t.proxima_room = room_rpg;
    }
	 if (global.estado == "space" && room != rm_space_shooter) 
    {
        var _t = instance_create_depth(0, 0, -9999, obj_transicao);
        _t.proxima_room = rm_space_shooter;
    }
	
	
	
	
	
}


switch (room)
{
    case rm_plataforma1:
        if (instance_exists(obj_player)) obj_player.estado = "plata";
        
        
        if (global.vezes_caiu >=2) 
        {
           
            if (texto_completo != "Opa, para onde você vai? Não tem nada lá. Toma essa arminha aqui, vai dar uns tiros pra passar o tempo") 
            {
                texto_completo = "Opa, para onde você vai? Não tem nada lá. Toma essa arminha aqui, vai dar uns tiros pra passar o tempo.";
                caracteres = 0;
                exibir = true;
                pos_y = 200; 
            }
            
            if (!instance_exists(obj_arma_1))
            {
                instance_create_layer(416, 64, "arma", obj_arma_1);
            }
			if !instance_exists(obj_boneco_teste)
			{
				
				
				instance_create_layer(135,157,layer,obj_boneco_teste)
				
				
				
			}
        }
		
		
    break;

    case room_rpg:
        if (instance_exists(obj_player)) obj_player.estado = "top";
    break;
	
	case rm_space_shooter
	:
	
	if (instance_exists(obj_player)) obj_player.estado = "space";
	
	
	
	
	break;
	
	case rm_fight
	:
	
	if (instance_exists(obj_player)) obj_player.estado = "fight";
	
	break;
	
	case rm_creditos
	:
	
	
	
	if (instance_exists(obj_player)) obj_player.estado = "boss";
	
	
	
	
	break;
}


if keyboard_check(ord("R"))
{
	
	room_restart()
	
	
	
	
}

