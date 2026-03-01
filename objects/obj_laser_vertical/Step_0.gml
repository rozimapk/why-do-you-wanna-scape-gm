
var dist_max = room_height; 


var _colisao = collision_line(x, y, x, y + dist_max, obj_pause_texto, false, false);

if (_colisao != noone) {
  
	
    comprimento = _colisao.y - y; 
    ativo_depois_da_caixa = false; 
} else {
    
    comprimento = dist_max;
    ativo_depois_da_caixa = true;
}


if (collision_line(x, y, x, y + comprimento, obj_player, false, false)) {
    
    if (obj_player.x < x) obj_player.x -= 15; else obj_player.x += 15;
    if (instance_exists(obj_cam)) obj_cam.shake_power = 4;
}