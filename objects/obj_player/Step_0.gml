/// @description Rodando a todo momento
// You can write your code in this editor


#region Controles

var _direita = keyboard_check(ord("D"))
var _esquerda = keyboard_check(ord("A"))
var _cima = keyboard_check(ord("W"))
var _baixo = keyboard_check(ord("S"))


#endregion


#region movimentação
	
	hspd = lengthdir_x(spd,move_direction) //velocidade horizontal tem como base a velocidade e a direção
	vspd = lengthdir_y(spd,move_direction) //velocidade vertical tem como base a velocidade e a direção

	//checando se o usuário está apertando alguma coisa
	if(_esquerda or _direita or _cima or _baixo)
	{
		//descobrindo para qual direção estou me movendo
		move_direction = point_direction(0,0,(_direita - _esquerda),(_baixo-_cima))
	
		//esquema de aceleração
		spd = lerp(spd,max_spd,0.1)
	
	}
	else
	{
		// desacelerando quando nada estiver pressionado
		spd = lerp(spd,0,0.1)
	}
	

#endregion


#region animação e condições para tal

var _hanim = _direita - _esquerda;
var _vanim = _baixo - _cima;

switch(anim)
{
	case 1:
		sprite_index = spr_player_frente;
	break;
	case 2:
		sprite_index = spr_plaeyr_lado;
	break;
	
	case 3:
		sprite_index = spr_player_cima;
	break;
	
	case 4:
		sprite_index = spr_player_frente;
	break;
		
	
}

if(_hanim!=0)
{	
	image_xscale = sign(_hanim);
	anim = 2;
}
if(_vanim==-1) anim = 3
if(_vanim==1) anim = 4






#endregion

show_debug_message(_vanim)