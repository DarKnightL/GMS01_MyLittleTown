/// @description Insert description here
// You can write your code in this editor
switch room{
	case rm_gameMain:
		audio_play_sound(snd_townBGM,1,true);
		audio_play_sound(snd_townAmbience,1,true);		
		break;
}


global.playerControl=true;


//Player States
enum playerState{
	idle,
	walking,
	pickingUp,
	carrying,
	carryIdle,
	puttingDown,
}


//Item States
enum itemState{
	idle,
	taken,
	used,
	puttingback,
}