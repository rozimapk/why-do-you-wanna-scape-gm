var alvo = obj_carro_player; 

if (instance_exists(alvo)) {
    
    var dir_alvo = point_direction(x, y, alvo.x + offset_x, alvo.y + offset_y);
    var diff = angle_difference(dir_alvo - 90, image_angle);
    
  
    var forca_giro = clamp(abs(diff) * 0.1, 0.5, giro_base);
    image_angle += clamp(diff, -forca_giro, forca_giro);

   
    if (abs(diff) > 30) {
        veloc *= 0.9; 
    } else {
        veloc += acel; 
    }
    
   
    if (veloc > 4) veloc = 4;
}

veloc *= atrito;

x += lengthdir_x(veloc, image_angle + 90);
y += lengthdir_y(veloc, image_angle + 90);

