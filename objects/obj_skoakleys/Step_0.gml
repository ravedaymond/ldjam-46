/// @description Player 2 Controler

playerSpeed = 2;
var isMoving = false;


if (keyboard_check(ord("D")))
{
	playerDirection = "right";
	if(sprite_index != spr_skoakleys_rightwalk)sprite_index = spr_skoakleys_rightwalk;
	isMoving = true;
	if(!position_meeting(x + playerSpeed , y, objWall)) x = x + playerSpeed;
}
if (keyboard_check(ord("A")))
{
	playerDirection = "left";
	if(sprite_index != spr_skoakleys_leftwalk)sprite_index = spr_skoakleys_leftwalk;
	isMoving = true;
	if(!position_meeting(x - playerSpeed , y, objWall)) x = x - playerSpeed;
}
if (keyboard_check(ord("S")))
{
	playerDirection = "forward";
	if(sprite_index != spr_skoakleys_frontwalk)sprite_index = spr_skoakleys_frontwalk;
	isMoving = true;
	if(!position_meeting(x , y + playerSpeed, objWall)) y = y + playerSpeed;
}
if (keyboard_check(ord("W")))
{
	playerDirection = "backward";
	if(sprite_index != spr_skoakleys_backwalk)sprite_index = spr_skoakleys_backwalk;
	isMoving = true;
	if(!position_meeting(x , y - playerSpeed, objWall)) y = y - playerSpeed;
}


if(isMoving == false)
{
	if (playerDirection == "forward") sprite_index = spr_skoakleys_frontidle;
	if (playerDirection == "backward") sprite_index = spr_skoakleys_backidle;
	if (playerDirection == "left") sprite_index = spr_skoakleys_leftidle;
	if (playerDirection == "right") sprite_index = spr_skoakleys_rightidle;
}
