

vida --
instance_destroy(other)

hit_flash = 6; 


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
