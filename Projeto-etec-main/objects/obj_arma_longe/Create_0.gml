/// @description Insert description here
// You can write your code in this editor



atirar = false;

delay_tiro = 0;


atirando =  function()
{ 
	
	delay_tiro--
	
	if(atirar)
	{
		if(delay_tiro <=0)
		{
			delay_tiro = delay * room_speed;
			
			var _tiro = instance_create_layer(x,y,layer, tiro)
			
			var _x = lengthdir_x(sprite_height,image_angle+90)
			var _y = lengthdir_y(sprite_height,image_angle+90)
			
			_tiro.speed = velocidade;
			_tiro.direction = image_angle + 90
			
		}
	}
}