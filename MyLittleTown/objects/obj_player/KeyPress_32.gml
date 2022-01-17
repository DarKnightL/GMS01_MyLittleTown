/// @description Insert description here
// You can write your code in this editor

var _text;


if(global.playerControl==true){
	//If near a NPC
	if(nearbyNPC){
		if(hasItem==noone||hasItem==undefined){
		_text=nearbyNPC.myText;
		if(!instance_exists(obj_textbox)){
			iii=instance_create_depth(nearbyNPC.x,nearbyNPC.y-400,-10000,obj_textbox);
			iii.texttoShow=_text;
		}
	}
}

	//If near an item
	if(nearbyItem&&!nearbyNPC){
		if(hasItem==noone||hasItem==undefined){
			global.playerControl=false;
			myState=playerState.pickingUp;
			image_index=0;
			hasItem=nearbyItem;
			//take into account the weight of an item
			carrylimit=hasItem.itemWeight*0.1;
			//change state of item we're picking up
			with(hasItem){
				myState=itemState.taken;
			}
		//pickup sound
		audio_play_sound(snd_itemPickup,1,0);
		}
	}
}