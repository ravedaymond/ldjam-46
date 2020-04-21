/// @description Player Controler

playerSpeed = 2;
var isMoving = false;

var hitWall = instance_position(x, y, objWall);
if (hitWall == noone)
{

if (keyboard_check(vk_right))
{
	playerDirection = "right";
	if(sprite_index != spr_raybones_rightwalk)sprite_index = spr_raybones_rightwalk;
	isMoving = true;
	if(!position_meeting(x + playerSpeed, y, objWall)) x = x + playerSpeed;
}
if (keyboard_check(vk_left))
{
	playerDirection = "left";
	if(sprite_index != spr_raybones_leftwalk)sprite_index = spr_raybones_leftwalk;
	isMoving = true;
	if(!position_meeting(x - playerSpeed, y, objWall)) x = x - playerSpeed;
}
if (keyboard_check(vk_down))
{
	playerDirection = "forward";
	if(sprite_index != spr_raybones_frontwalk)sprite_index = spr_raybones_frontwalk;
	isMoving = true;
	if(!position_meeting(x , y + playerSpeed, objWall)) y = y + playerSpeed;
}
if (keyboard_check(vk_up))
{
	playerDirection = "backward";
	if(sprite_index != spr_raybones_backwalk)sprite_index = spr_raybones_backwalk;
	isMoving = true;
	if(!position_meeting(x , y - playerSpeed, objWall)) y = y - playerSpeed;
}

}


if(isMoving == false)
{
	if (playerDirection == "forward") sprite_index = spr_raybones_frontidle;
	if (playerDirection == "backward") sprite_index = spr_raybones_backidle;
	if (playerDirection == "left") sprite_index = spr_raybones_leftidle;
	if (playerDirection == "right") sprite_index = spr_raybones_rightidle;
}
