/// @description 
depth = -y;

if(target != noone){
	arcStep++;
	x = scrBallArcPath(x, (x+target.x)*0.5, target.x, arcStep/arcSpeed);
	y = scrBallArcPath(y, (y+target.y)*0.5-random_range(32, 128), target.y, arcStep/arcSpeed);
	if(x == target.x && y = target.y){
		target = noone;
		instance_destroy(target);
	}
	if(arcStep == arcSpeed){
		arcStep = 0;
	}
	
}
