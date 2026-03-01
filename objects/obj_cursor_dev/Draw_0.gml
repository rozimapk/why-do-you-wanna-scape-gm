
draw_self()





if destruir == 1
{
	angle += 2
	y_visual += 5
	image_alpha = 0
	draw_sprite_ext(sprite_index,0,x,y + y_visual,image_xscale,image_yscale, angle,c_white,1)
	
	
	
	
	
}

if desenhar == 1
{
	
	draw_set_font(fnt_smail)
	draw_text_scribble(x - 10,y + 5,"ele disse: nada de [wave] fugir[/wave]")
	alarm[2] = 60
	draw_set_font(-1)
	
	
}