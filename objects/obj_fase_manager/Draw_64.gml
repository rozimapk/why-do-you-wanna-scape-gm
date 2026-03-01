var gw = display_get_gui_width();
var gh = display_get_gui_height();

var alvo_y = exibir ? 0 : 200;
pos_y = lerp(pos_y, alvo_y, 0.1);

var y1 = gh - 120 + pos_y;
var y2 = gh - 20 + pos_y;

draw_set_font(fnt_dialogo);

draw_set_color(c_white);
draw_rectangle(120, y1 - 25, 200, y1, false);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(150, y1 - 35, "DEV");

draw_set_color(c_white);
draw_rectangle(100, y1, gw - 100, y2, false);
draw_set_color(c_black);
draw_rectangle(104, y1 + 4, gw - 104, y2 - 4, false);

if (caracteres < string_length(texto_completo)) caracteres += 0.5;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_ext(gw / 2, y1 + 20, string_copy(texto_completo, 1, caracteres), 22, gw - 260);

draw_set_halign(fa_right);
draw_text_ext(gw - 130, y2 - 35, "aperte enter", 22, gw);

if (caracteres >= string_length(texto_completo) && keyboard_check_pressed(vk_enter))
{
    exibir = false;
	tempo = 500
}

draw_set_halign(fa_left);