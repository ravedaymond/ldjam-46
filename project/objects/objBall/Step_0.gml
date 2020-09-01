/// @description 
depth = -y;

if(target != noone){
	arcStep++;
	x = scrBallArcPath(x, (x+target.x)*0.5, target.x, arcStep/arcSpeed);
	y = scrBallArcPath(y, ((y+target.y)*0.5)-32, target.y, arcStep/arcSpeed);
	if(x == target.x && y = target.y){
		instance_destroy(objBallTarget);
		target = noone;
		arcStep = 0;
	}	
}
