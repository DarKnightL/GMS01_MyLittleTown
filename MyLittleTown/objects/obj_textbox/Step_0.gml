//FadeEffect
switch fadeMe{
case 0:{
	if(image_alpha<1){
		image_alpha+=fadeSpeed;
		}
	if(image_alpha==1){
		fadeMe=1;
		}
	}; break;
	
case 2:{
	if(image_alpha>0){
		image_alpha-=fadeSpeed;
		}
	if(image_alpha==0){
		fadeMe=3;
		alarm[0]=2;
		}
	}; break;
}