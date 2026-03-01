
if (estado == "indo") {
    tempo++;
    if (tempo >= duracao) {
        room_goto(proxima_room);
        estado = "voltando";
    }
} else if (estado == "voltando") {
    tempo--;
    if (tempo <= 0) instance_destroy();
}


for (var i = 0; i < num_faixas; i++) {
    var p = clamp((tempo / duracao) / offsets[i], 0, 1);
    larguras[i] = p * cam_w;
}