
y += sin(current_time * 0.01) *2

if se_mover == 1
{
	
	
	x = lerp(x,room_width/2,0.1);
	y = lerp(y,room_height/2, 0.1);
	if instance_exists(obj_player)
	{
		if sair = 0
		{
			obj_player.x = x
			obj_player.y = y
			obj_player.grav = 0
			
		
		}
		
	}
	
	if x == lerp(x,room_width/2,0.1)
	{
		
		sair = 1
		
		
		
		
	}
	
	
	
}
if sair == 1
{
	
	obj_player.grav = 0.3
	x = lerp(x,0,0.1)
	y = lerp(y,0,0.1)
	
	
	
}

if y_visual > room_height /2
{
	
	instance_destroy()
	
	
	
}


image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);

if vida <= 0
{
	 
	destruir = 1;
	
	
}


if global.vezes_caiu == 1
{
	
	
	
	desenhar = 1;
	
	
}else
{
	
	desenhar = 0
	
	
	
}
if vida == 3
{
	
	image_index = 0;
	
	
}
if vida == 2
{
	
	image_index = 1
	
	
}
if vida == 1
{
	
	image_index = 2
	
	
}