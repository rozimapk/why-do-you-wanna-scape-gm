

#macro CAM_W 426 
#macro CAM_H 240 
#macro WINDOW_W 1024
#macro WINDOW_H 576

window_set_size(WINDOW_W,WINDOW_H)
display_set_gui_size(CAM_W, CAM_H);
window_set_position(100,100)

function tile_meeting(_x, _y, _tilemap) {
    
    return  tilemap_get_at_pixel(_tilemap, bbox_left + (_x - x), bbox_top + (_y - y)) ||
            tilemap_get_at_pixel(_tilemap, bbox_right + (_x - x), bbox_top + (_y - y)) ||
            tilemap_get_at_pixel(_tilemap, bbox_left + (_x - x), bbox_bottom + (_y - y)) ||
            tilemap_get_at_pixel(_tilemap, bbox_right + (_x - x), bbox_bottom + (_y - y));
}


global.bomba_adquirida = 0;

function screen_freeze(duracao)
{
    var tempo_parada = current_time + duracao;
    while (current_time < tempo_parada) 
    { 
        
    }
}

global.scor = 0;
global.shake_acumulado = 0
global.policiai_kill = 0;