/// @description Iniciando Variáveis


hspd=0; //velocidade horizontal
vspd=0; //velocidade vertical
spd = 0;//velocidade

move_direction = 0;//direção do movimento
max_spd = 5; //velocidade maxima

anim = 1; //variável de animação
arma = noone;


usa_arma = function()
{
	var _atirar = mouse_check_button_pressed(mb_left)

	
		
		var _dir = point_direction(x,y,mouse_x,mouse_y)
		var _x  = x + lengthdir_x(sprite_width,_dir)
		var _y  = y + lengthdir_y(sprite_height,_dir)
		
		obj_arma_longe.arma.image_angle = _dir - 90
		obj_arma_longe.arma.x = _x;
		obj_arma_longe.arma.y = _y;
		
		obj_arma_longe.atirar = _atirar
	
	
}