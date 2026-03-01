
hit_flash = 6; 
instance_destroy(other); 
vida-=1

screen_freeze(35); 


var forca_recuo = 8; 
x += lengthdir_x(forca_recuo, other.direction);
y += lengthdir_y(forca_recuo, other.direction);

if instance_exists(obj_cam)
{
	
	obj_cam.shake_power = 5
	
	
	
	
	
}

image_xscale = 1.4;
image_yscale = 0.7;
var inst = instance_create_layer(x, y, layer, obj_dano_texto);
inst.texto = "10"; 


if (vida <= 0) {
    inst.texto = "DELETED";
    inst.image_blend = c_red;
}
audio_play_sound(snd_tiro_space,0,0)




