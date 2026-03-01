
if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, id)) {
        segurando = true;
        ja_foi_tocado = true; 
        
        
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
        
        
        v_velocidade = 0;
        h_velocidade = 0;
        giro = 0;
		if dialogo == 0
		{
			
			
				if (obj_fase_manager.texto_completo != "VOCÊ TIROU O PAUSE? ISSO NEM ERA PRA TER GRAVIDADE") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo = "VOCÊ TIROU O PAUSE? ISSO NEM ERA PRA TER GRAVIDADE";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				instance_destroy(obj_arma_1);
            }
			dialogo = 1

		
			
			
			
			
			
			
			
		}
		
		
    }
}


if (mouse_check_button_released(mb_left) && segurando) {
    segurando = false;
    v_velocidade = -2; // Pequeno pulo ao soltar
    h_velocidade = random_range(-2, 2);
    giro = random_range(-5, 5);
}

// 3. LOGICA DE POSIÇÃO
if (segurando) {
    // Segue o mouse mantendo o offset original
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
    image_angle = lerp(image_angle, 0, 0.2); // Alinha o texto na mão
} 
else if (ja_foi_tocado) {
    // FISICA DE QUEDA (Só roda se não estiver na mão e já foi tocado uma vez)
    v_velocidade += gravidade;
    x += h_velocidade;
    y += v_velocidade;
    image_angle += giro;

    // COLISÃO COM O LASER (O laser segura o objeto no ar)
    if (collision_line(obj_laser_vertical.x, 0, obj_laser_vertical.x, room_height, id, false, false)) {
        v_velocidade = 0;
        h_velocidade = 0;
        giro = lerp(giro, 0, 0.1);
    }

    // COLISÃO COM O CHÃO (Limite da tela)
    if (y > room_height - 20) {
        y = room_height - 20;
        v_velocidade = 0;
        h_velocidade = 0;
        giro = 0;
    }
}


