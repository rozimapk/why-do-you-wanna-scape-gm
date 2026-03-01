var tocar_nessa_room = 
    (room == room_rpg) || 
    (room == rm_fight) || 
    (room == rm_plataforma1) ||
    (room == rm_space_shooter) ||
    (room == rm_menu);   // 👈 adicionamos aqui



if (tocar_nessa_room)
{
    var som_para_tocar = snd_sound_track_2; 
    

    if (room == rm_plataforma1)
    {
        som_para_tocar = snd_sound_track_1; 
    }
    else if (room == rm_space_shooter || room == rm_menu)
    {
        som_para_tocar = snd_spaco; 
    }

    
    if (global.music_id == noone || 
        audio_sound_get_asset(global.music_id) != som_para_tocar)
    {
        if (global.music_id != noone)
        {
            audio_stop_sound(global.music_id);
        }
        
        global.music_id = audio_play_sound(som_para_tocar, 10, true);
        global.music_volume = 0;
        audio_sound_gain(global.music_id, 0, 0);
    }

    
    if (room == rm_fight)
    {
        audio_sound_pitch(global.music_id, 1.2); 
    }
    else if (room == rm_plataforma1)
    {
        audio_sound_pitch(global.music_id, 0.8); 
    }
    else if (room == rm_space_shooter)
    {
        audio_sound_pitch(global.music_id, 1.1); 
    }
    else
    {
        audio_sound_pitch(global.music_id, 1.0);
    }

   
    if (global.music_volume < 1)
    {
        global.music_volume += 0.01;
        audio_sound_gain(global.music_id, global.music_volume, 0);
    }
}
else
{
    if (global.music_id != noone)
    {
        audio_stop_sound(global.music_id);
        global.music_id = noone;
        global.music_volume = 0;
    }
}