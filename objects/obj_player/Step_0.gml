/// @description Rodando a todo momento
// You can write your code in this editor


#region Controles
var _direita =	keyboard_check(ord("D"))
var _esquerda = keyboard_check(ord("A"))
var _cima =		keyboard_check(ord("W"))
var _baixo =	keyboard_check(ord("S"))
var _dash =	keyboard_check_pressed(vk_space);



#endregion


#region movimentação
	
	hspd = lengthdir_x(spd,move_direction) //velocidade horizontal tem como base a velocidade e a direção
	vspd = lengthdir_y(spd,move_direction) //velocidade vertical tem como base a velocidade e a direção

	//checando se o usuário está apertando alguma coisa
	if(_esquerda or _direita or _cima or _baixo)
	{
		//descobrindo para qual direção estou me movendo
		move_direction = point_direction(0,0,_direita -_esquerda,_baixo-_cima)
	
		//esquema de aceleração
		spd = lerp(spd,max_spd,0.1)
	
	}
	else
	{
		// desacelerando quando nada estiver pressionado
  		spd = lerp(spd,0,0.1)
	}
	var _spd = spd / 2
	
	if( (_esquerda & _direita) or (_cima & _baixo) ) spd = lerp(spd,0,0.2)
 
	


#endregion

#region dash

dash_cooldown = max(dash_cooldown-1,0)

if(_dash and dash_cooldown == 0)
{
	dash_cooldown = 60;
	spd = 5 * dash_spd
	dashing = true
}
else
{
	dashing = false
}
#endregion

#region animação e condições para tal

switch(anim)
{
	case "movendo_baixo":
		sprite_index = spr_player_frente;
	break;
	case "movendo_direita":
		sprite_index = spr_plaeyr_lado_direito;
	break;
	
	case "movendo_cima":
		sprite_index = spr_player_cima;
	break;
	
	case "movendo_esquerda":
		sprite_index = spr_player_lado_esquerdo;
	break;
	
	case "dash":
		image_index = 2;
	break;
		
	
}
 // tô usando o angulo que ele tá olhando para saber qual sprite colocar
if(move_direction == 0 and dashing == false)		anim = "movendo_direita"
if(move_direction == 180 and dashing == false)	anim = "movendo_esquerda";
if(move_direction == 90 and dashing == false)	anim = "movendo_cima"
if(move_direction == 270 and dashing == false)	anim = "movendo_baixo"
if(_dash and dashing) anim = "dash"





#endregion

//show_debug_message(move_direction)

usa_arma(); // essa é para a arma de longo alcance

depth = -bbox_bottom;




