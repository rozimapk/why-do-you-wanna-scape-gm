show_debug_message("Aviso Criado!");

if (instance_number(obj_inimigo_nave) + instance_number(obj_aviso_spawn) < 10)
{
    var lado = irandom(3);
    var xx, yy;
    var margem_interna = 64; 

    switch(lado) {
        
        case 0: 
            xx = irandom_range(margem_interna, room_width - margem_interna); 
            yy = margem_interna; 
            break;
      
        case 1: 
            xx = irandom_range(margem_interna, room_width - margem_interna); 
            yy = room_height - margem_interna; 
            break;
        
        case 2: 
            xx = margem_interna; 
            yy = irandom_range(margem_interna, room_height - margem_interna); 
            break;
       
        case 3: 
            xx = room_width - margem_interna; 
            yy = irandom_range(margem_interna, room_height - margem_interna); 
            break;
    }

    instance_create_layer(xx, yy, "tiro", obj_aviso_spawn);
}

alarm[0] = spawn_rate;