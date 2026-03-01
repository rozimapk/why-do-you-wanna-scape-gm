

var gw = display_get_gui_width()
var gh = display_get_gui_height()

draw_set_colour(c_black)
draw_set_alpha(alpha)

draw_circle(gw/2,gh/2,tamanho * gw, false)

draw_set_alpha(1)
draw_set_colour(c_white)