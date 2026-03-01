if instance_exists(obj_gui_space)
{
	if (obj_gui_space.pausado) exit; 
	else
{
	vel = 0;
	
	
	
}
	}




switch (estado)
{
    case "top":   mov_top();   break;
    case "plata": mov_plata(); break;
    case "space": mov_space(); break;
	
	case "fight": mov_fight(); break;
	case "boss" :endless();break
	
}



var caixa_h = instance_place(x + velh, y, obj_caixa);
if (caixa_h != noone) {
    with (caixa_h) {
        if (!place_meeting(x + other.velh, y, obj_colisao) && !place_meeting(x + other.velh, y, obj_caixa)) {
            x += other.velh;
            
            
            if (!audio_is_playing(snd_click1)) {
                audio_play_sound(snd_click1, 0, false);
            }
        } else {
            while (!place_meeting(x + sign(other.velh), y, obj_colisao) && !place_meeting(x + sign(other.velh), y, obj_caixa)) {
                x += sign(other.velh);
            }
            
           
            if (!audio_is_playing(snd_click1)) {
                audio_play_sound(snd_click1, 0, false);
            }
            
            other.velh = 0; 
        }
    }
}


var caixa_v = instance_place(x, y + velv, obj_caixa);
if (caixa_v != noone) {
    with (caixa_v) {
        if (!place_meeting(x, y + other.velv, obj_colisao) && !place_meeting(x, y + other.velv, obj_caixa)) {
            y += other.velv;
            
            if (!audio_is_playing(snd_click1)) {
                audio_play_sound(snd_click1, 0, false);
            }
        } else {
            while (!place_meeting(x, y + sign(other.velv), obj_colisao) && !place_meeting(x, y + sign(other.velv), obj_caixa)) {
                y += sign(other.velv);
            }
            
            if (!audio_is_playing(snd_click1)) {
                audio_play_sound(snd_click1, 0, false);
            }
            
            other.velv = 0;
        }
    }
}
if obj_fase_manager.exibir = false
{
	
	
	
	vel = 3;
	
	
	
	
	
}

