
var display_w = display_get_width();
var display_h = display_get_height();


var scale = floor(min(display_w / CAM_W, display_h / CAM_H));

if (scale < 1) scale = 1;

var new_w = CAM_W * scale;
var new_h = CAM_H * scale;

var offset_x = (display_w - new_w) * 0.5;
var offset_y = (display_h - new_h) * 0.5;

draw_surface_ext(application_surface, offset_x, offset_y, scale, scale, 0, c_white, 1);