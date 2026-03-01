

var gw = display_get_gui_width()/2;
var gh = display_get_gui_height()/2;


draw_text_scribble(gw - 640,gh - 315, "[wave][rainbow] aperte espaço para PAUSAR[/rainbow][/wave]")
draw_text(gw - 630,gh - 340, "aperte R pra reiniciar")
draw_set_font(fnt_grande)
draw_set_alpha(1)
draw_text_scribble(gw - 640,gh - 335,"[rainbow]" +  string(global.scor) + "[/rainbown]")
draw_set_halign(-1)
draw_set_font(fnt_dialogo)
draw_set_alpha(1)