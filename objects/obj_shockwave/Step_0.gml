image_blend = c_purple
image_xscale += 0.2;
image_yscale = image_xscale;
image_alpha -= 0.05;
if (image_alpha <= 0) instance_destroy();