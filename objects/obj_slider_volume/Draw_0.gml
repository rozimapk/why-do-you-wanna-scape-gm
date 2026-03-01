

draw_rectangle(slider_x1, slider_y-4, slider_x2, slider_y+4, false);


var knob_x = lerp(slider_x1, slider_x2, slider_value);
draw_circle(knob_x, slider_y, 8, false);


draw_text(slider_x1 + 100, slider_y -50, "Volume: " + string(round(slider_value * 100)) + "%");