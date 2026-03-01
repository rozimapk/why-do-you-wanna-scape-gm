


if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mouse_x, mouse_y, slider_x1, slider_y-10, slider_x2, slider_y+10))
    {
        dragando = true;
    }
}

if (mouse_check_button_released(mb_left))
{
    dragando = false;
}


if (dragando)
{
    slider_value = clamp((mouse_x - slider_x1) / (slider_x2 - slider_x1), 0, 1);
    
    global.volume_master = slider_value;
    audio_master_gain(global.volume_master);
}