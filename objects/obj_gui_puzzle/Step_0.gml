

if cliques >= 3
{
	
	with(all)
	{
		
		direction = irandom_range(45,135);
		
		speed = random_range(2,5)
		
		gravity = 0.03
		image_angle += random_range(-5,5);
		
		cliques = 0;
		mask_index = -1;
		 
		
		
		
		
		
	}
	if !instance_exists(obj_transicao_puzzle)
	{
		
	  instance_create_depth(0, 0, -9999, obj_transicao_puzzle)
	  
	  
}
	
	
	
}
	
	
	if global.puzzle_terminado == 1
	{
		
		
		if (obj_fase_manager.texto_completo != "ebaa, parabéns, agora repita isso, denovo, e denovo, e cuidado com oque mexe") 
            {
				
                obj_fase_manager.texto_completo = "ebaa, parabéns, agora repita isso, denovo, e denovo, e cuidado com oque mexe";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
		
		
		
		
		
		
	}
	
	


