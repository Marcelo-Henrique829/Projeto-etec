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
	
	if(_esquerda and _direita)spd = 0; //se duas teclas pressionadas

	if(_cima and _baixo)spd = 0;// se duas teclas pressionadas


#endregion


#region animação e condições para tal

var _hanim = _direita - _esquerda;
var _vanim = _baixo - _cima;

switch(anim)
{
	
	case "direita":
		sprite_index = spr_plaeyr_lado_direito;
	break;
	
	case "esquerda":
		sprite_index = spr_player_lado_esquerdo;
	break;
	
	case "cima":
		sprite_index = spr_player_cima;
	break;
	
	case "baixo":
		sprite_index = spr_player_frente;
	break;
	
}

if(_hanim==1) //se movendo para direita
{	
	//image_xscale = sign(_hanim);
	anim = "direita";
}

if(_hanim==-1) anim = "esquerda" //se movendo para esquerda

if(_vanim==-1) anim = "cima" //se movendo para cima

if(_vanim==1) anim = "baixo" // se movendo para 






#endregion



usa_arma(); // essa é para a arma de longo alcance

show_debug_message(spd)
