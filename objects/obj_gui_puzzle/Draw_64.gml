
 var gw = display_get_gui_width()/2
 var gh = display_get_gui_height()/2
 

draw_text(gw - 500,gh - 295,"R para reiniciar")

if global.bomba_adquirida == 1
{
	
	
	
	
draw_text_scribble(gw - 500, gh - 250, "APERTE ESPAÇO PARA [wave][rainbow]" + string(texto) + "[/rainbow][/wave]");


	
	
}

 
if global.puzzle_terminado == 1 
{
	
	
	
	if (point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),gw - 220, gh- 250,gw - 100,gh - 210))
	{
		
	
		texto = "BOOOOM?"
		if mouse_check_button_pressed(mb_left)
		{
			
			obj_cam.shake_power = 50;
			cliques+=1
			if (obj_fase_manager.texto_completo != "NÃO! ESSA BOMBA NÃO! VOCÊ VAI DELETAR MEU JOGO") 
            {
				
                obj_fase_manager.texto_completo = "NÃO! ESSA BOMBA NÃO! VOCÊ VAI DELETAR MEU JOGO";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
			
			
		}
	
	
	
	
	
	}
	else
	{
		
		texto = "BOMBA?"
		
		
		
	}
}