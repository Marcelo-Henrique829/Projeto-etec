/// @description Insert description here
// You can write your code in this editor

var _texto = string_copy(texto,0,indice)


draw_set_color(c_black)
draw_set_font(fnt_base)

 
draw_sprite(spr_balao,1,0,360 - 80)

draw_text_ext((0 + 100) + margem,360 - 70,_texto,20,640 - margem * 2)