

image_xscale = lerp(image_xscale, 1, 0.1) + sin(current_time * 0.02) * 0.02;
image_yscale = lerp(image_yscale, 1, 0.1) + sin(current_time * 0.02) * 0.02;
image_angle  = lerp(image_angle, 0, 0.1);
image_blend  = merge_color(image_blend, c_white, 0.1);


if (place_meeting(x, y, obj_tiro))
{
    
    image_xscale = 1.5; 
    image_yscale = 0.5;
    image_angle  = irandom_range(-20, 20);
    
    
    image_blend = c_red; 
    
   
    var _tiro = instance_place(x, y, obj_tiro);
    if (_tiro != noone) instance_destroy(_tiro);
}
