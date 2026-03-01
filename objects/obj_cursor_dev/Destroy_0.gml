
if (obj_fase_manager.texto_completo != "OQUE, VOCÊ MATOU MEU MOUSE,ELE É CARO >:(") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo = "OQUE, VOCÊ MATOU MEU MOUSE,ELE É CARO >:(";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				instance_destroy(obj_arma_1);
            }

repeat(15)
{
	
	
	instance_create_layer(x,y,layer,obj_particula_bomba)
	
}