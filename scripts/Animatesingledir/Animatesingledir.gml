function Animatesingledir() {
	//animate animates the target making sure its sprite is facing the object's direction and looping the animation
	// while making sure the animation is devided into 4 parts for the four directions of said animation 




	if (image_index >= sprite_get_number(swordswing) )
	{
		animationEnd = true;
		localFrame -= _totalFrames ;
	} else animationEnd = false ;




}
