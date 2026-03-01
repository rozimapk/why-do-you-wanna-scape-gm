

if (pega == 1 && soltada == 0 )
{
	
	x = obj_player.x
	y = obj_player.y
	
	if keyboard_check_pressed(vk_space)
	{
		
		soltada = 1;
		timer = 60;
		
		
	}
	
	
	
}

if (soltada == 1)
{
	
	timer -= 1;
	
	image_xscale = 1 + sin(current_time * 0.1)*0.05
	image_yscale = 1 + sin(current_time * 0.1)*0.05
	
	if (timer <= 0)
	{
		
		if instance_exists(obj_cam)
		{
			
			obj_cam.shake_power = 10
			
			
		}
		
		var caixa = instance_nearest(x,y,obj_caixa_destr)
		
		if caixa != noone && distance_to_object(caixa) < 50
		{
			repeat(distance_to_object(caixa) < 50)
			{
				instance_destroy(caixa)
			
			}
			
			
		}
		
		instance_destroy();
		
		
		
	}
	

	
	
	
	
	
	
}

	if ( pega == 0 && place_meeting(x,y,obj_player))
	{
		
		
		global.bomba_adquirida = 1;
		
		pega = 1;
		
		
		
		
	}