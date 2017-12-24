///draw_sun()


vspd = (actualY - yTo)/80


draw_sprite_ext(spr_sun, 0, room_width div 2, actualY , 1, 1, 0, c_white, 1);

actualY += vspd

