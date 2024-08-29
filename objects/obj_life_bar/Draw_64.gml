/// @description Insert description here
// You can write your code in this editor


var _amount = (life/life_max) * life_barw; //formula variavel
var _amount_fix = (life_max/life_max) * life_barw; //formula fixa
var _amount_feedback = (life_feedback/life_max) * life_barw; //formula fixa


var _x1 = v_w/2 - (life_barw/2);
var _y1 = 5;
var _x2 = _x1 + _amount;	
var _x2_fix = _x1 + _amount_fix;	
var _x2_feedback = _x1 + _amount_feedback;	
var _y2 = _y1+ life_barh;

// desenhando a barra de vida em si
if(life >0)
{
	
	//background
	draw_set_color(cor_2)
	draw_rectangle(_x1,_y1,_x2_fix,_y2,0)
	
	//feedback
	draw_set_color(cor_3)
	draw_rectangle(_x1,_y1,_x2_feedback,_y2,0)


	
	draw_set_color(cor_1)
	draw_rectangle(_x1,_y1,_x2,_y2,0)
	
	//borda do outline
	draw_set_color(cor_3)
	draw_rectangle(_x1,_y1,_x2_fix,_y2,1 )

}

draw_set_color(-1)
