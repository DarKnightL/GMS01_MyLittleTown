/// @description Insert description here
// You can write your code in this editor

var _text;


if(nearbyNPC&&global.playerControl==true){
	_text=nearbyNPC.myText;
	if(!instance_exists(obj_textbox)){
		iii=instance_create_depth(x,y,-10000,obj_textbox);
		iii.texttoShow=_text;
	}
}