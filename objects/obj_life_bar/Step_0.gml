/// @description Insert description here
// You can write your code in this editor

life_feedback = approach(life_feedback,life,1)

if(life <= 0)
{
	instance_destroy(obj_boss)
	room_goto(rm_final)
}