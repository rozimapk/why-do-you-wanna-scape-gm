

var _largura_alvo = 1280; 
var _altura_alvo = 720;  

display_set_gui_size(_largura_alvo, _altura_alvo);
switch (room)
{
    case rm_plataforma1:
        global.estado = "plataforma";
        if (instance_exists(obj_player)) obj_player.estado = "plata";
    break;

    case room_rpg:
        global.estado = "top";
        if (instance_exists(obj_player)) obj_player.estado = "top";
		if (obj_fase_manager.texto_completo != "VOCÊ MATA MEU MOUSE E AINDA VAI FOGE PRO PUZZLE") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo = "VOCÊ MATA MEU MOUSE E AINDA VAI FOGE PRO PUZZLE";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				instance_destroy(obj_arma_1);
            }
			
			
		
    break;
	case rm_space_shooter
	:
		global.estado = "space";
        if (instance_exists(obj_player)) obj_player.estado = "space";
		if (obj_fase_manager.texto_completo != "AGORA CHEGA, VOCÊ NÂO TEM VIDA PRA MORRER, TEM BARREIRAS,E TEM DOPAMINA E ATÉ UM PAUSE, ADEUS") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo ="agora chega, você não tem vida pra morrer, tem BARREIRAS e tem dopamina, alias até um PAUSE adeus";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
	
	
	
	break;
	
	case rm_fight:
	
	if (instance_exists(obj_player)) obj_player.estado = "fight";
	global.estado = "fight"
	if (obj_fase_manager.texto_completo != "CANSEI DE VOCE, fIZ UM BOLETIM DE OCORRENCIA POR ASSASINATO DO MEU CURSOR") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo ="CANSEI DE VOCE, fIZ UM BOLETIM DE OCORRENCIA POR ASSASINATO DO MEU CURSOR";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
	
	
	break;
	
	case rm_creditos
	:
	
	if (instance_exists(obj_player)) obj_player.estado = "boss";
	global.estado = "boss"
	if (obj_fase_manager.texto_completo != "TA BOM, EU DESISTO,ACABOU OS JOGOS PRA VOCÊ") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo ="TA BOM, EU DESISTO,ACABOU OS JOGOS PRA VOCÊ,É PODE SAIR, SAI";
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
				
            }
	
	
	
	
	break;
	
	
}


