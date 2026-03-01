



if (obj_fase_manager.texto_completo != "vamos rapaz, acabou o jogo, fecha ele e volta a jogar algo decente") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo = "vamos rapaz, acabou o jogo, fecha ele e volta a jogar algo decente";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
			
			alarm[3] = 400