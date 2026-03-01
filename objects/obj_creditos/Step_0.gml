
if creditos alpha += 0.1


if instance_exists(obj_bolinha)
{

	if (obj_bolinha.x < 0 || obj_bolinha.x > room_width || obj_bolinha.y < 0 || obj_bolinha.y > room_height) 
	{
    creditos = 1;
	
	if (obj_fase_manager.texto_completo != "OLHA OQUE VOCÊ fEZ COM MINHA BOLINHA, SUA CULPA") 
	            {
					global.vezes_caiu = 0
	                obj_fase_manager.texto_completo = "OLHA OQUE VOCÊ fEZ COM MINHA BOLINHA, SUA CULPA";
	                obj_fase_manager.caracteres = 0;
	                obj_fase_manager.exibir = true;
	                obj_fase_manager.pos_y = 200; 
				
	            }
	}
}