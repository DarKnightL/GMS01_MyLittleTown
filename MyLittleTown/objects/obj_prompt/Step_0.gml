/// @description Fade animation

y+=shift;


switch fadeMe{
//fadeIn
case "fadeIn":{
if(image_alpha<1){
	image_alpha+=fadeSpeed;
	}
if(image_alpha>=1){
	fadeMe="fadeVisible";
	}
};break;
//fadeOut
case "fadeOut":{
if(image_alpha>0){
	image_alpha-=fadeSpeed;
	}
if(image_alpha<=0){
	fadeMe="fadeDone";
	alarm[0]=2;
	}
};break;

}