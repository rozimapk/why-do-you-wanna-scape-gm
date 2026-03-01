

if pega == 0
{
	
	
image_index = 1;
image_xscale = 1 + sin(current_time * 0.005) * 0.07;
image_yscale = image_xscale;
	
	
}

	if pega == 1
	{
		 
			var _offset_y = -10;
		x = lerp(x, obj_player.x, 0.3);
		y = lerp(y, obj_player.y + _offset_y, 0.3);

		var _dir = point_direction(x, y, mouse_x, mouse_y);
		image_angle = _dir;

		if (_dir > 90 && _dir < 270)
		{
		    image_yscale = lerp(image_yscale,-1,0.1);
		}
		else
		{
		    image_yscale = lerp(image_yscale,1,0.1);
		}

		var _recoil = 0;
		if (mouse_check_button(mb_left)) _recoil = 4;
		x -= lengthdir_x(_recoil, _dir);
		y -= lengthdir_y(_recoil, _dir);
	
	
		if mouse_check_button_pressed(mb_left)
		{
	

			audio_play_sound(snd_shoot, 0, false, 10, 0, random_range(0.8, 1.5));
			instance_create_layer(x,y,layer,obj_tiro)
	
	
	
		}
	
	}
	
	
