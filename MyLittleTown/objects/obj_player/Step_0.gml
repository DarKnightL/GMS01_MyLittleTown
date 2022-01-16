 /// @description Insert description here
// You can write your code in this editor



//Check keys for move
if(global.playerControl==true){
	moveRight=keyboard_check(vk_right);
	moveUp=keyboard_check(vk_up);
	moveDown=keyboard_check(vk_down);
	moveLeft=keyboard_check(vk_left);
}
if(global.playerControl==false){
	moveRight=0;
	moveUp=0;
	moveDown=0;
	moveLeft=0;
}

vx=(moveRight-moveLeft)*walkSpeed;
vy=(moveDown-moveUp)*walkSpeed;


//Collisions with NPCs
nearbyNPC=collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true); 
if(nearbyNPC){
	if(hasGreeted==false){
		if(!audio_is_playing(snd_greeting01)){
			audio_play_sound(snd_greeting01,1,false);
			hasGreeted=true;
		}
	}
	if(npcPrompt==noone||npcPrompt==undefined){
		npcPrompt=scr_showPrompt(nearbyNPC,nearbyNPC.x,nearbyNPC.y-450);
	}
}


if(!nearbyNPC){
	if(hasGreeted==true){
		hasGreeted=false;
	}
	 scr_dismissPrompt(npcPrompt,0);
}



//Collisions with Items
nearbyItem=collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_item,false,false);
if(nearbyItem){
	if(itemPrompt==noone||itemPrompt==undefined){
		show_debug_message("Object found an item!");
		itemPrompt=scr_showPrompt(nearbyItem,nearbyItem.x,nearbyItem.y-300);
	}
}
if(!nearbyItem){
	scr_dismissPrompt(itemPrompt,1);
}



//Depth control
depth=-y;

//Idle Sprite control
if(vx==0&&vy==0){
		myState=playerState.idle;
}

if(vx!=0||vy!=0){
	{
		if(!collision_point(x+vx,y,obj_par_environment,true,true)){
			x+=vx;
		}
		if(!collision_point(x,y+vy,obj_par_environment,true,true)){
			y+=vy;
		}



	//Change walking sprite
		if(vx>0){
		dir=0;
		}

		if(vx<0){
		dir=2;
		}

		if(vy>0){
		dir=3;
		}

		if(vy<0){
		dir=1;
		}	

	myState=playerState.walking;

	}
	
audio_listener_set_position(0,x,y,0);
}