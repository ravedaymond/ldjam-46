/// @description 
depth = -y;

if(target != noone){
	arcStep++;
	x = scrBallArcPath(x, (x+target.x)*0.5, target.x, arcStep/arcSpeed);
	y = scrBallArcPath(y, (y+target.y)*0.5 - yrandarc, target.y, arcStep/arcSpeed);
	if(x == target.x && y == target.y)
	{
		instance_destroy(objBallTarget);
		target = noone;
		if(lastHit == "raybones") with (obj_raybones_score) raybonesscore = raybonesscore + 1;
		if(lastHit == "skoakleys") with (obj_skoakleys_score) skoakleysscore = skoakleysscore + 1;
	}
	if(arcStep == arcSpeed){
		arcStep = 0;
	}
}
