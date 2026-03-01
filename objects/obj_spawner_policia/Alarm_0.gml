if (instance_exists(obj_carro_player)) 
{
 
    if (instance_number(obj_policia_carro) < 200) 
    {
       
        var dist_spawn = 1200; 
        
      
        var angulo = random(360);
        
        var xx = obj_carro_player.x + lengthdir_x(dist_spawn, angulo);
        var yy = obj_carro_player.y + lengthdir_y(dist_spawn, angulo);
        
    
        var inst = instance_create_layer(xx, yy, "Instances", obj_policia_carro);
        
        
        with(inst) {
            image_angle = point_direction(x, y, obj_carro_player.x, obj_carro_player.y) - 90;
        }
    }
}


alarm[0] = spawn_rate;