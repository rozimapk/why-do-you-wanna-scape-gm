if (pausado == 0) 
{
    pausado = 1;
    audio_play_sound(snd_pause,0,0)
    
    if (!instance_exists(obj_pause_texto)) 
    {
        var _cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
        var _cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
        instance_create_layer(_cx, _cy, "topo", obj_pause_texto);
    }
}
else 
{
    if (instance_exists(obj_pause_texto)) 
    {
     
        var _no_laser = !collision_line(obj_laser_vertical.x, 0, obj_laser_vertical.x, room_height, obj_pause_texto, false, false);
        
        if (obj_pause_texto.ja_foi_tocado == false && _no_laser) 
        {
            instance_destroy(obj_pause_texto);
        }
    }
    audio_play_sound(snd_pause,0,0)
    pausado = 0;
}