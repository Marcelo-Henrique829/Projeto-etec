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


