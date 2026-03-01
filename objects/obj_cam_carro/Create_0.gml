
view_enabled = true;
view_visible[0] = true

camera_set_view_size(view_camera[0], CAM_W,CAM_H)


cam_x = camera_get_view_x(view_camera[0])

cam_y = camera_get_view_y(view_camera[0])
cam_size = 1
cam_size_min = 1;
cam_size_max = 1.5;
cam_size_previous = 1;
shake_power = 0;

cam_w_current = CAM_W * cam_size
cam_h_current = CAM_H * cam_size
target = obj_carro_player;

zoom_punch = 0; 

cam_size_target = 1;  


nova_uptado = function()
{
    if (instance_exists(target))
    {
       
        var current_size_with_punch = cam_size - zoom_punch;
        
        cam_w_current = CAM_W * current_size_with_punch;
        cam_h_current = CAM_H * current_size_with_punch;
        
        zoom_punch = lerp(zoom_punch, 0, 0.1);
        
        camera_set_view_size(view_camera[0], cam_w_current, cam_h_current);

      
        cam_x = lerp(cam_x, target.x - cam_w_current/2, 0.1);
        cam_y = lerp(cam_y, target.y - cam_h_current/2, 0.1);
        
        camera_set_view_pos(view_camera[0], cam_x, cam_y);
    }
}

