var hit = keyboard_check_pressed(vk_control);
if(hit) {
	show_debug_message_timestamp("player struck ball!");
	with(objBall) {
		if(x < objCourt.halfCourt) { // On Left Side
			if(target != noone){
				instance_destroy(objBallTarget);
			}
			var newTargetX = random_range(objCourt.halfCourt + 3, objCourt.width);
			var newTargetY = random_range(objCourt.y, objCourt.height);
			instance_create_depth(newTargetX, newTargetY, depth, objBallTarget);
			yrandarc = random_range(50,80);
			arcSpeed = arcSpeed - spd;
			arcStep = 0;
			target = instance_create_depth(newTargetX, newTargetY, depth, objBallTarget);
			lastHit = "raybones";
		} 
		if(x > objCourt.halfCourt) { // On Right Side
			if(target != noone){
				instance_destroy(objBallTarget);	
			}
			var newTargetX = random_range(objCourt.x, objCourt.halfCourt - 3);
			var newTargetY = random_range(objCourt.y, objCourt.height);
			yrandarc = random_range(50,80);
			arcSpeed = arcSpeed - spd;
			arcStep = 0;
			target = instance_create_depth(newTargetX, newTargetY, depth, objBallTarget);
			lastHit = "raybones";
		}
	}
}