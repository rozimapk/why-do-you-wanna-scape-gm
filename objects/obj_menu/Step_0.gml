hover  = point_in_rectangle(mouse_x, mouse_y, room_width/2 - 60, room_height/2 - 10, room_width/2 + 40, room_height/2 + 30);
hovero = point_in_rectangle(mouse_x, mouse_y, room_width/2 - 60, room_height/2 + 30, room_width/2 + 40, room_height/2 + 80);

if (!variable_global_exists("menu_hover_last")) global.menu_hover_last = -1;

if (subir == 1)
{
    if (add_y < 150)
    {
        add_y += 4;
    }
    else
    {
        subir = 0;
    }
}

var hover_id = -1;
if (hover)  hover_id = 0;
if (hovero) hover_id = 1;

if (hover_id != -1 && global.menu_hover_last != hover_id)
{
    audio_play_sound(snd_click_2, 0, false);
}

global.menu_hover_last = hover_id;

if (hover)
{
    escala_xj = 1.5;
    escala_yj = 1.5;

    if (mouse_check_button_pressed(mb_left))
    {
        var inst = instance_create_layer(0, 0, layer, obj_transicao);
        inst.proxima_room = rm_plataforma1;
    }
}
else
{
    escala_xj = 1;
    escala_yj = 1;
}

if (hovero)
{
    escala_xo = 1.5;
    escala_yo = 1.5;

    if (mouse_check_button_pressed(mb_left))
    {
        window_set_fullscreen(true);
    }
}
else
{
    escala_xo = 1;
    escala_yo = 1;
}