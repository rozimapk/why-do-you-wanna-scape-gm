if (pausado) 
{
    if (!instance_exists(obj_pause_texto)) 
    {
       
        var _cam_x = camera_get_view_x(view_camera[0]);
        var _cam_y = camera_get_view_y(view_camera[0]);
        var _cam_w = camera_get_view_width(view_camera[0]);
        var _cam_h = camera_get_view_height(view_camera[0]);

        if obj_pause_texto.ja_foi_tocado == 0
		{
        instance_create_layer(_cam_x + _cam_w/2, _cam_y + _cam_h/2, "topo", obj_pause_texto);
		}
    }
}

if obj_fase_manager.exibir == 0
{
	
	
	if !instance_exists(obj_spawner)
	{
		instance_create_layer(0,0,layer,obj_spawner)
	}	
	
	
	
	
}