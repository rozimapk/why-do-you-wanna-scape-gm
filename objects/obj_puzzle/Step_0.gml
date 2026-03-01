var totais_xis = instance_number(obj_xis);
var xis_encontrados = 0;


with (obj_xis) {
    if (place_meeting(x, y, obj_caixa)) {
        xis_encontrados += 1;
    }
}

if (xis_encontrados >= totais_xis && totais_xis > 0) {
    if (global.puzzle_terminado == 0) {
        global.puzzle_terminado = 1;
        
       
        if (obj_fase_manager.texto_completo != "ebaa, parabéns, agora repita isso, denovo, e denovo, e cuidado com a interface") {
            global.vezes_caiu = 0;
            obj_fase_manager.texto_completo = "ebaa, parabéns, agora repita isso, denovo, e denovo, e cuidado com a interface";
            obj_fase_manager.caracteres = 0;
            obj_fase_manager.exibir = true;
            obj_fase_manager.pos_y = 200; 
        }
    }
}