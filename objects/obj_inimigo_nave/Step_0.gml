


if (obj_gui_space.pausado) exit; 

if (instance_exists(obj_player)) {
    
  
    var dir_player = point_direction(x, y, obj_player.x, obj_player.y);
    direction += angle_difference(dir_player, direction) * 0.05;
    speed = vel;

   
    var outro = instance_place(x, y, obj_inimigo_nave);
    if (outro != noone) {
        
        var dir_repulsa = point_direction(outro.x, outro.y, x, y);
        x += lengthdir_x(1, dir_repulsa);
        y += lengthdir_y(1, dir_repulsa);
    }
}


image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);

if vida <=0
{
	
	instance_destroy()
	
	
	
	
}
