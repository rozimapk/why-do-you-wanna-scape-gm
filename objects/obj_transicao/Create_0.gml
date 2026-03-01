
persistent = true;
cam_w = display_get_gui_width();
cam_h = display_get_gui_height();

tempo = 0;
duracao = 20; 
estado = "indo"; 
proxima_room = noone;


num_faixas = 20;
altura_faixa = cam_h / num_faixas;
larguras = array_create(num_faixas, 0);
offsets = array_create(num_faixas, 0);

for (var i = 0; i < num_faixas; i++) {
    offsets[i] = random_range(0.2, 0.8);
}