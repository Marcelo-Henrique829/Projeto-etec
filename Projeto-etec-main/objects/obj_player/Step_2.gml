/// @description Roda depois do step
// You can write your code in this editor


#region Sistema de colisão "perfeita" e movimentação até então

	var _hspd = sign(hspd) //retorna hspd como 1 -1 ou 0
	var _vspd = sign(vspd) //retorna vspd como 1 -1 ou 0


	repeat(abs(hspd)) //colisão horizntal
	{
		if(place_meeting(x + _hspd ,y,obj_parede))
		{
			hspd = 0
		}
		else
		{
			x+=_hspd

		}
	}
	repeat(abs(vspd)) //colisão vertical
	{
		if(place_meeting(x,y + _vspd,obj_parede))
		{
			vspd = 0
		}
		else
		{
			y+=_vspd

		}
	}

#endregion


