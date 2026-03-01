

draw_set_font(fnt_dialogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_text_transformed_color(x+1, y+1, texto, escala, escala, angulo, c_black, c_black, c_black, c_black, alfa);


draw_text_transformed_color(x, y, texto, escala, escala, angulo, c_white, c_white, cor, cor, alfa);


draw_set_halign(fa_left);
draw_set_valign(fa_top);