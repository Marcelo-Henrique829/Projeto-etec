/// @description Iniciando Variáveis


image_xscale = .4
image_yscale = .4


vida = 2
hspd=0; //velocidade horizontal
vspd=0; //velocidade vertical
spd = 0;//velocidade

move_direction = 0;//direção do movimento
max_spd = 3; //velocidade maxima

anim = "parado"; //variável de animação
arma = noone;

//dash
dash_spd = 2;
dash_duration = 0;
dash_cooldown = 0;
dashing = false

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