
velh = 0;

velv = 0;

estado = "";

grav = 0.3;

pulo_height = 6;

coyote_time = 0;

coyote_time_frames = 10;

vez = 0;

vel = 4;
coldown = 0
angle = 0

faixa_atual = 1;
distancia_faixa = 160; 
x_centro = room_width / 2; 
x = x_centro; 

pode_tocar_som_caixa = true;


scale_speed = 0.1;





function mov_top()
{
	depth = -y
	
	vel = 2
    sprite_index = spr_player_top_down;

    var _up    = keyboard_check(ord("W"));
    var _down  = keyboard_check(ord("S"));
    var _left  = keyboard_check(ord("A"));
    var _right = keyboard_check(ord("D"));

    velh = (_right - _left) * vel;
    velv = (_down - _up) * vel;

	
    if (place_meeting(x + velh, y, obj_colisao))
    {
        while (!place_meeting(x + sign(velh), y, obj_colisao)) 
        {
            x += sign(velh); 
        }
        velh = 0; 
    }
    x += velh; 

    
    if (place_meeting(x, y + velv, obj_colisao))
    {
        while (!place_meeting(x, y + sign(velv), obj_colisao)) 
        {
            y += sign(velv); 
        }
        velv = 0; 
    }
    y += velv; 

    
    if (velh != 0 || velv != 0)
	{
		image_speed = 1;
		angle = 2 + sin(current_time * 0.04) * 8;
		
	}
	
    else { image_speed = 0; image_index = 0; angle = 0; 
		
		
		
		
		
		
		
		
		
}
}
	
		
    
function mov_plata()

{

sprite_index = spr_player_plata

var left = keyboard_check(vk_left) || keyboard_check(ord("A"));

var right = keyboard_check(vk_right) || keyboard_check(ord("D"));

var pulo = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));

var chao = place_meeting(x, y + 1, obj_colisao);


velh = (right - left) * vel;


if (chao)

{

coyote_time = coyote_time_frames;

velv = 0;

}

else

{

coyote_time--;

velv += grav;

}


if (pulo && coyote_time > 0)

{

velv = -pulo_height;

coyote_time = 0;

}



if (place_meeting(x + velh, y, obj_colisao))

{

while (!place_meeting(x + sign(velh), y, obj_colisao)) x += sign(velh);

velh = 0;

}

x += velh;



if (place_meeting(x, y + velv, obj_colisao))

{

while (!place_meeting(x, y + sign(velv), obj_colisao)) y += sign(velv);

velv = 0;

}

y += velv;






if (y > room_height + 50)

{

    if (instance_exists(obj_cursor_dev))

    {

        

        obj_cursor_dev.x = lerp(obj_cursor_dev.x,x,0.1)

        obj_cursor_dev.y = lerp(obj_cursor_dev.x,y,0.1)
		
		
		obj_cursor_dev.se_mover = 1

		obj_cursor_dev.sair = 0

        velv = 0;

        velh = 0;

		global.vezes_caiu += 1;

        show_debug_message("Caiu: " + string(global.vezes_caiu));

    }

    else if !instance_exists(obj_cursor_dev)

    {


        global.save_x = x;

        global.save_y = 60; 

        global.estado = "top";

        global.vezes_caiu = 0; 
		
		audio_play_sound(snd_click1,0,0)


    }

}



}



function mov_space()
{
	var _dir = point_direction(x, y+5, mouse_x, mouse_y);
	angle = _dir - 90;
	sprite_index = spr_player_nave;
	vel = 2;
	var left = keyboard_check(ord("A"));
	var right = keyboard_check(ord("D"));
	var up = keyboard_check(ord("W"));
	var down = keyboard_check(ord("S"));
	
	velh = (right - left) * vel;
	velv = (down - up) * vel;
	
	y += velv;
	x += velh;

	
	

	
	if mouse_check_button(mb_left)
	{
		if coldown == 0
		{
			instance_create_layer(x, y, "tiro", obj_tiro_space);
			audio_play_sound(snd_click_2, 0, false, 1, 0, random_range(1.3, 1.5));
			coldown = 1;
			alarm[4] = 10;
			
			if instance_exists(obj_cam)
			{
				
				 
}
				obj_cam.shake_power = 1;
				
			
		}
	}
	else
	{
		if instance_exists(obj_cam)
		{
			obj_cam.shake_power = 0;
		}
	}
	
	
	if y < 0
	{
		
		
		
		y = 2
		
		
		
	}
	if y > 256
	{
		
		
		y = 255
		
		
	}
	if x > 480 or x < 0
	{
		
		if (obj_fase_manager.texto_completo != "VOCÊ NÃO SE CONTENTA COM NADA?? E AINDA QUEBRA MEUS JOGOS") 
            {
				global.vezes_caiu = 0
                obj_fase_manager.texto_completo = "VOCÊ NÃO SE CONTENTA COM NADA?? E AINDA QUEBRA MEUS JOGOS";
				room_goto(rm_fight)
				audio_play_sound(snd_pause,0,0)
       
    
				
                obj_fase_manager.caracteres = 0;
                obj_fase_manager.exibir = true;
                obj_fase_manager.pos_y = 200; 
			
				
            }
			
			
		
		
	}
}


function mov_fight()
{
	
	depth = -y
	
	vel = 2
    sprite_index = spr_player_top_down;

    var _up    = keyboard_check(ord("W"));
    var _down  = keyboard_check(ord("S"));
    var _left  = keyboard_check(ord("A"));
    var _right = keyboard_check(ord("D"));

    velh = (_right - _left) * vel;
    velv = (_down - _up) * vel;

	
    if (place_meeting(x + velh, y, obj_colisao))
    {
        while (!place_meeting(x + sign(velh), y, obj_colisao)) 
        {
            x += sign(velh); 
			
			
        }
        velh = 0; 
    }
    x += velh; 

    
    if (place_meeting(x, y + velv, obj_colisao))
    {
        while (!place_meeting(x, y + sign(velv), obj_colisao)) 
        {
            y += sign(velv); 
        }
        velv = 0; 
    }
    y += velv; 

    
    if (velh != 0 || velv != 0)
	{
		image_speed = 1;
		angle = 2 + sin(current_time * 0.04) * 15;
		
	}
	
    else {
		image_speed = 0; image_index = 0; angle = 0; 
		
		
	}
		 
		
		
		
		
		
		
		
		
		

}


function endless()
{
	sprite_index = spr_player_top_down2
    var left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
    var right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);

    
    if (left && faixa_atual > 0) {
        faixa_atual -= 1;
		image_xscale = 1
    }
    
    if (right && faixa_atual < 2) {
        faixa_atual += 1;
		image_xscale = -1
    }

   
    var _x_alvo = x_centro + (faixa_atual - 1) * distancia_faixa;

   
    x = lerp(x, _x_alvo, 0.1);
    
   
    var _inclinacao = (x - _x_alvo) * -0.1;
    angle = lerp(angle, _inclinacao, 0.1);
}