

if (hit_flash > 0) {
    hit_flash -= 1;
    
    gpu_set_fog(true, c_white, 0, 0); 
    draw_self();                    
    gpu_set_fog(false, c_white, 0, 0);
} else {
    draw_self(); 
}