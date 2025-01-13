score += 10;
audio_play_sound(snd_die, 1, false);
instance_destroy(); 

with(other){
	instance_destroy();
	
	if(sprite_index == spr_asteroid_Large){
		repeat(2){
	var _new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid);
	_new_asteroid.sprite_index = spr_asteroid_Med;
		}
	} else if (sprite_index == spr_asteroid_Med) {
		repeat(2){
	var _new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid);
	_new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	repeat(10){
		instance_create_layer(x,y, "Instances",obj_debris);
	}
}