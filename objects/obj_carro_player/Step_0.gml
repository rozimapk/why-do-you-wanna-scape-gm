var input_frente = keyboard_check(ord("W")) - keyboard_check(ord("S"));
var input_giro = keyboard_check(ord("A")) - keyboard_check(ord("D"));

if (input_frente != 0) {
    veloc += input_frente * acel;
}
veloc *= atrito;

if (abs(veloc) > 0.1) {
    var multiplicador_direcao = (veloc > 0) ? 1 : -1;
    image_angle += input_giro * giro_base * multiplicador_direcao;
}

x += lengthdir_x(veloc + veloc_turbo, image_angle + 90);
y += lengthdir_y(veloc + veloc_turbo, image_angle + 90);

if (abs(veloc) < 0.05) veloc = 0;

if (abs(veloc) > 1 && input_giro != 0) {
    var r1 = instance_create_layer(x + lengthdir_x(-15, image_angle), y + lengthdir_y(-15, image_angle), layer, obj_rastro);
    var r2 = instance_create_layer(x + lengthdir_x(15, image_angle), y + lengthdir_y(15, image_angle), layer, obj_rastro);
    
    r1.image_angle = image_angle;
    r2.image_angle = image_angle;
}


if (place_meeting(x, y, obj_policia_carro) && !invencivel) 
{
	
	if veloc_turbo < 2
	{
	    hp -= 1;
	    invencivel = true;
	    alarm[1] = tempo_invencivel;
   
		
		global.shake_acumulado += 1;
		
	
  
	    escala_x = 1.4;
	    escala_y = 0.6;
		obj_cam_carro.zoom_punch = 0.1
	}
	else
	{
		
		escala_x = 1.4;
	    escala_y = 0.6;
		obj_cam_carro.zoom_punch = 0.1
		global.policiai_kill+=1
		
		
	}
}



escala_x = lerp(escala_x, 1, 0.1);
escala_y = lerp(escala_y, 1, 0.1);

if (invencivel) {
    image_alpha = (current_time % 200 < 100) ? 0.3 : 1;
} else {
    image_alpha = 1;
}


if (hp <= 0) {
    
    
	repeat(20)
	{
		if instance_number(obj_particula_bomba) < 20
		{
			instance_create_layer(x,y,layer,obj_particula_bomba)
		}
		
		
		
	}
	image_alpha = 0
	if alarm[2] < 0
	{
		alarm[2] = 50
	}
}
	
	
	

if (keyboard_check(vk_space) && turbo > 0) 
{
    turbo -= 1; 
    veloc_turbo += 0.3; 
    
    var ghost = instance_create_layer(x, y, layer, obj_ghost);
    ghost.sprite_index = sprite_index;
    ghost.image_angle = image_angle;
    ghost.image_alpha = 1;
} 
else 
{
   
    if (turbo < 100)turbo += 0.5; 
	veloc_turbo = 0
	
}


