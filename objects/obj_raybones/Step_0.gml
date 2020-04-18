/// @description Player Controler

playerSpeed = 4;

if (keyboard_check(vk_right))x = x + playerSpeed;
if (keyboard_check(vk_left)) x = x - playerSpeed;
if (keyboard_check(vk_down)) y = y + playerSpeed;
if (keyboard_check(vk_up)) y = y - playerSpeed;
