/// @description 
#region input
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var hDir = right - left;
var vDir = down - up;
depth = -y;
#endregion

#region Collision
if(position_meeting(x+xSpd, y, objWall)) {
	while(!position_meeting(x+sign(xSpd), y, objWall)) {
		x+=sign(xSpd);
	}
	xSpd = 0;
}

if(position_meeting(x, y+ySpd, objWall)) {
	while(!position_meeting(x, y+sign(ySpd), objWall)) {
		y+=sign(ySpd);
	}
	ySpd = 0;
}
#endregion

#region Movement
x+=xSpd;
y+=ySpd;
if(right || left) { // horiz move
	if(xSpd != 0 && sign(xSpd) != hDir) {
		xSpd -= acc*sign(xSpd);
	} else {
		xSpd += acc*hDir;
		if(abs(xSpd) > hSpd) {
			xSpd = hSpd*sign(xSpd);	
		}
	}
} else {
	xSpd -= acc*sign(xSpd);
	if(abs(xSpd) <= 0) {
		xSpd = 0;
	}
}

if(down || up) { // vertic move
	if(ySpd != 0 && sign(ySpd) != vDir) {
		ySpd -= acc*sign(ySpd);	
	} else {
		ySpd += acc*vDir;
		if(abs(ySpd) > vSpd) {
			ySpd = vSpd*sign(ySpd);
		}
	}
} else {
	ySpd -= acc*sign(ySpd);
	if(abs(ySpd) <= 0) {
		ySpd = 0;	
	}
}
#endregion