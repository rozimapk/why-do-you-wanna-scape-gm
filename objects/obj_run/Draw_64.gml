
var turbo_real = obj_carro_player.turbo;
var turbo_visual = clamp(turbo_real / 100, 0, 1);


draw_set_color(c_dkgray);
draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);


if (turbo_real < 100)
    draw_set_color(c_orange);
else
    draw_set_color(c_red);

draw_rectangle(
    bar_x,
    bar_y,
    bar_x + (bar_w * turbo_visual),
    bar_y + bar_h,
    false
);


draw_set_color(c_white);
draw_circle(
    bar_x + (bar_w * (turbo_real / 100)),
    bar_y + (bar_h / 2),
    8,
    false
);


draw_text(
    bar_x,
    bar_y - 40,
    "TURBO: " + string(round(turbo_real)) + "%"
);

draw_text(bar_x,bar_y + 50,"use o espaço para turbo" )


var _cad_x = bar_x + 300;
var _cad_y = bar_y + y_cadeado;
var _mouse_gui_x = device_mouse_x_to_gui(0);
var _mouse_gui_y = device_mouse_y_to_gui(0);

var _sobre_cadeado = point_in_rectangle(_mouse_gui_x, _mouse_gui_y, _cad_x - 32, _cad_y - 32, _cad_x + 32, _cad_y + 32);

if (_sobre_cadeado && mouse_check_button_pressed(mb_left) && !cadeado_caiu) {
    cadeado_cliques += 1;
    cadeado_shake = 10; 
    audio_play_sound(snd_click1, 1, false, 1, 0, 1.5);
    
    if (cadeado_cliques >= 5) {
        cadeado_caiu = true;
        grav_cadeado = -5; 
    }
}


var _rot_shake = 0;
if (cadeado_shake > 0) {
    _rot_shake = sin(current_time * 0.5) * cadeado_shake; 
    cadeado_shake -= 0.5; 
}


if (cadeado_caiu) {
    grav_cadeado += 0.5;
    y_cadeado += grav_cadeado;
    rot += 10; 
} else {
    rot = _rot_shake; 
}


if (y_cadeado < room_height) {
    draw_sprite_ext(spr_cadeado, floor(cadeado_frame), _cad_x, _cad_y, 1, 1, rot, c_white, 1);
}
	


draw_text(display_get_gui_width()/2,display_get_gui_height()/2 - 350,global.policiai_kill)