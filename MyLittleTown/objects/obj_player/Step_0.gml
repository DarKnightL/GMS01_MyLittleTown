 /// @description Insert description here
// You can write your code in this editor
moveRight=keyboard_check(vk_right);
moveUp=keyboard_check(vk_up);
moveDown=keyboard_check(vk_down);
moveLeft=keyboard_check(vk_left);


vx=(moveRight-moveLeft)*walkSpeed;
vy=(moveDown-moveUp)*walkSpeed;


//Collisions with NPCs
nearbyNPC=collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true); 
if(nearbyNPC){
	show_debug_message("obj_player collided with NPC");
}
if(!nearbyNPC){
	show_debug_message("obj_player does not collide with NPC");
}



//Depth control
depth=-y;

//Idle Sprite control
if(vx==0&&vy==0){
	switch dir{
		case 0: sprite_index=spr_player_idle_right; break;
		case 1: sprite_index=spr_player_idle_up; break;
		case 2: sprite_index=spr_player_idle_left; break;
		case 3: sprite_index=spr_player_idle_down; break;
	}
}

if(vx!=0||vy!=0){
	if(!collision_point(x+vx,y,obj_par_environment,true,true)){
		x+=vx;
	}
	if(!collision_point(x,y+vy,obj_par_environment,true,true)){
		y+=vy;
	}
}


//Change walking sprite
if(vx>0){
	sprite_index=spr_player_walk_right;
	dir=0;
}

if(vx<0){
	sprite_index=spr_player_walk_left;
	dir=2;
}

if(vy>0){
	sprite_index=spr_player_walk_down;
	dir=3;
}

if(vy<0){
	sprite_index=spr_player_walk_up;
	dir=1;
}