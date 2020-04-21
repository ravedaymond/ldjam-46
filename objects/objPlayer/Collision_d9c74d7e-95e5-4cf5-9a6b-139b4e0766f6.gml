/// @description 
var hit = keyboard_check_pressed(vk_space);
if(hit) {
	show_debug_message_timestamp("player struck ball!");
	with(objBall) {
		if(x < objCourt.halfCourt) { // On Left Side
			if(target != noone){
				instance_destroy(objBallTarget);
			}
			var newTargetX = random_range(objCourt.halfCourt, objCourt.width);
			var newTargetY = random_range(objCourt.y, objCourt.height);
			instance_create_depth(newTargetX, newTargetY, depth, objBallTarget);
			yrandarc = random_range(40, 70);
			target = instance_create_depth(newTargetX, newTargetY, depth, objBallTarget);
		} 
		if(x > objCourt.halfCourt) { // On Right Side
			if(target != noone){
				instance_destroy(objBallTarget);	
			}
			var newTargetX = random_range(objCourt.x, objCourt.halfCourt);
			var newTargetY = random_range(objCourt.y, objCourt.height);
			yrandarc = random_range(40, 70);
			target = instance_create_depth(newTargetX, newTargetY, depth, objBallTarget);
		}
	}
}