draw_self()
draw_set_halign(fa_center)


var mouse_em_cima = position_meeting(mouse_x, mouse_y, id);


var escala = 1;
if (mouse_em_cima && !ja_foi_tocado) {
    escala = 1.1 + sin(current_time * 0.01) * 0.05; 
    draw_set_color(c_yellow); 
} else {
    draw_set_color(c_white);
}

draw_text_transformed(x, y, "PAUSADO", escala, escala, image_angle);