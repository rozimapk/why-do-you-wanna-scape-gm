
if (obj_fase_manager.texto_completo != "POR QUE VOCÊ NÃO SAI, EU DEIXO") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo = "POR QUE VOCÊ NÃO SAI, EU DEIXO";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
			
alarm[1] = 400