/// @description Insert description here
// You can write your code in this editor
myState=playerState.idle;


walkSpeed=16;
vx=0;
vy=0;
dir=3;
moveRight=0;
moveLeft=0;
moveUp=0;
moveDown=0;


nearbyNPC=noone;
lookRange=30;


audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);


hasGreeted=false;

npcPrompt=noone;

hasItem=noone;
hasItemX=x;
hasItemY=y;
nearbyItem=noone;
itemPrompt=noone;
carryLimit=0;


//Player Sprite Array
//Idle
playerSpr[playerState.idle][0]=spr_player_idle_right;
playerSpr[playerState.idle][1]=spr_player_idle_up;
playerSpr[playerState.idle][2]=spr_player_idle_left;
playerSpr[playerState.idle][3]=spr_player_idle_down;

//Walking
playerSpr[playerState.walking][0]=spr_player_walk_right;
playerSpr[playerState.walking][1]=spr_player_walk_up;
playerSpr[playerState.walking][2]=spr_player_walk_left;
playerSpr[playerState.walking][3]=spr_player_walk_down;