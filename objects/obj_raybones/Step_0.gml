/// @description Player Controler

playerSpeed = 4;
var isMoving = false;


if (keyboard_check(vk_right))
{
	playerDirection = "right";
	if(sprite_index != spr_raybones_rightwalk)sprite_index = spr_raybones_rightwalk;
	isMoving = true;
	x = x + playerSpeed;
}
if (keyboard_check(vk_left))
{
	playerDirection = "left";
	if(sprite_index != spr_raybones_leftwalk)sprite_index = spr_raybones_leftwalk;
	isMoving = true;
	x = x - playerSpeed;
}
if (keyboard_check(vk_down))
{
	playerDirection = "forward";
	if(sprite_index != spr_raybones_frontwalk)sprite_index = spr_raybones_frontwalk;
	isMoving = true;
	y = y + playerSpeed;
}
if (keyboard_check(vk_up))
{
	playerDirection = "backward";
	if(sprite_index != spr_raybones_backwalk)sprite_index = spr_raybones_backwalk;
	isMoving = true;
	y = y - playerSpeed;
}


if(isMoving == false)
{
	if (playerDirection == "forward") sprite_index = spr_raybones_frontidle;
	if (playerDirection == "backward") sprite_index = spr_raybones_backidle;
	if (playerDirection == "left") sprite_index = spr_raybones_leftidle;
	if (playerDirection == "right") sprite_index = spr_raybones_rightidle;
}
