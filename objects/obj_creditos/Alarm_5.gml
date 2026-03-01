



if (obj_fase_manager.texto_completo != "ok, talvez eu seja bonzinho de mais ent eu vo te dar essa bolinha de gato para brincar")
            {
				
                obj_fase_manager.texto_completo = "ok, talvez eu seja bonzinho de mais ent eu vo te dar essa bolinha de gato para brincar";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
			
			
			alarm[6] = 650
			instance_create_layer(obj_player.x,obj_player.y,layer,obj_bolinha)
			
			