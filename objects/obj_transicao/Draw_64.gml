
draw_set_color(c_black); 

for (var i = 0; i < num_faixas; i++) {
    var _y1 = i * altura_faixa;
    var _y2 = _y1 + altura_faixa;
    
    
    draw_rectangle(0, _y1, larguras[i], _y2, false);
}

draw_set_color(c_white);