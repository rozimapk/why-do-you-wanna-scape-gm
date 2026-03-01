
draw_self()


draw_line_width_color(x, y, x, y + comprimento, 3, c_red, c_red);


draw_line_width_color(x, y, x, y + comprimento, 1, c_white, c_white);






if (comprimento < room_height) {
    draw_circle_color(x, y + comprimento, 4 + random(2), c_white, c_red, false);
}

if (hit_flash > 0) {
    hit_flash -= 1;
    
    gpu_set_fog(true, c_white, 0, 0); 
    draw_self();                    
    gpu_set_fog(false, c_white, 0, 0);
} else {
    draw_self(); 
}