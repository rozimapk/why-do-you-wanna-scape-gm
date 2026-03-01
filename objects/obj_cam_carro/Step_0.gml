
nova_uptado()


var mouse_zoom = mouse_wheel_down() - mouse_wheel_up();

if (mouse_zoom != 0) {
    cam_size_target += mouse_zoom * 0.2; 
    cam_size_target = clamp(cam_size_target, cam_size_min, cam_size_max);
}


cam_size = lerp(cam_size, cam_size_target, 0.1);

