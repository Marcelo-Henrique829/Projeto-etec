/// @description Insert description here
// You can write your code in this editor
if(fim)
{
	var _dir = 0
	
	repeat (4)
	{
		var _inst = instance_create_layer(x,y, layer,obj_boss_projetil)
		_inst.speed = 3;
		_inst.direction = _dir;
		_dir +=90;
	}
	
	instance_destroy()
}